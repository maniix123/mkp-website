<?php

class User_model extends CI_Model {

	//The login function
	public function loginUser($data){

		//validate the data
		$this->form_validation->set_rules('username', 'username','required|xss_clean');
		$this->form_validation->set_rules('password', 'password', 'required|xss_clean');

		//check for form validation errors
		if ($this->form_validation->run() == FALSE)
		{
			//if there are errors return them to the login page
			$this->index();
		}

		//check if account exists
		$user = $this->checkAccount($data);
		if($user === false)
		{
			$data['error_message'] = 'Username or Password doesn\'t exist!';
			$data['title'] = 'Members Login';
			$this->load->view('login', $data);
		}

		//check if their account is banned
		else if($user->status == 'banned') //check if their account is banned because I SAID SO!
		{
			$data['error_message'] = 'Your account has been banned!';
			$data['title'] = 'Members Login';
			$this->load->view('login', $data);
		}
		else{

			//set the session id;
			$this->session->id = $user->id;

			//set the session role;
			$this->session->role = $user->role;

			//and then redirect to member page;
			redirect('member', 'refresh');
		}
	}

	//function checks if there is an account associated with the username and password given or checks if the account has been banned or not
	public function checkAccount($data){
		// print_r($data); die();

		//prepare the query
		$sql = "SELECT * FROM members WHERE username = ?";
		$query = $this->db->query($sql, [
			$data['username'], 
			// $data['password']
		]);
		// echo $this->db->last_query(); die();
		
		//number of rows targeted based on the given username
		$numberTargeted =  $query->num_rows();

		if($numberTargeted > 0){ //check if account exists

			//set result $query to the stupid variable;		
			$row = $query->row();

			//check if the given password matches the hashed password..
			if (password_verify($data['password'], $row->hashed_password)) {

				    //return the Status of the account;
					return $row;
			    }else{

			    	return FALSE;
			    }

		}else{

			return FALSE; //if if no $numberTargeted is 0, return false

		}
	}

	//check if the account exists!!!!
	public function checkIfAccountExists($id){
		$this->db->cache_on();
		$sql = "SELECT * FROM members WHERE id = ?";
		$query = $this->db->query($sql, [$id]);
		$query->result();
		return $query->num_rows();
	}

	//get the everythiing from the logged in user
	public function get($type, $id = NULL){
		if($id == NULL)
		{
			$member = $this->getMemberFromId($this->session->id);
		}else{
			$member = $this->getMemberFromId($id);
		}
		
		if($type == 'name'){
			return $member[0]->FirstName .' '. $member[0]->LastName;
		}
		elseif($type == 'image'){
			if( !empty( $member[0]->image ) ){
				return base_url() . 'images/profile/' . $member[0]->image;
			}
			else{
				return base_url() .'images/default.png';
			}
		}
		elseif($type == 'image_file_name'){
			return $member[0]->image;
		}
		else{
			return $member[0]->$type;
		}
	} 


	//Create a new user
	public function create($data){
		
		//Some logic for the username and password
		if($data['username'] == ''){
			
			//if they don't provide for their username and password (well most of the cases I think wala jud ni),
			//the username will be their first name and their password would be their last name..
			$username = explode(' ',trim($data['firstname']))[0];
			$password = $data['lastname'];

		}else{

			//Well if they have provided for their username and password, then maayo.
			$username = $data['username'];
			$password = $data['password'];
		}

		//check if the person is an attorney
		if(!empty($data['atty'])){
			$checkIFAttorney = 'yes';
		}else{
			$checkIFAttorney = '';
		}

		//Arrange the data
		$dataOne = [
			'batch_id' => $data['batch'],
			'FirstName' => ucwords($data['firstname']),
			'LastName' => ucwords($data['lastname']),
			'ContactNumber' => $data['contact'],
			'CurrentAddress' => ucwords($data['curr-addr']),
			'PermanentAddress' => ucwords($data['p-addr']),
			'AttyOrNot' => $checkIFAttorney,
			'SlaveName' => ucwords($data['slave-name']),
			'username' => $username,
			'hashed_password' => password_hash($password, PASSWORD_BCRYPT), //hash this fucking password
			'visible' => $password,
			'status' => 'activated',
			'role' => 'user'
			];

		//insert the data! :D 
		$this->db->insert('members', $dataOne);

		if($this->db->affected_rows() == 0){
			echo $this->db->error();
		}

		//get the last inserted record
		$lastInsertedId = $this->db->insert_id();

		//check if they have work provided
		$count = count($data['work-position']);
		if($count > 0){
			for($i = 0; $i < $count; $i++){
				$dataSomething = [
					'member_id' => $lastInsertedId,
					'WorkPlace' => $data['work-place'][$i],
					'WorkPosition' => $data['work-position'][$i],
					'years' => $data['years-working'][$i]
				];
					$this->db->insert('work', $dataSomething);
			}
		}

			//check if the user is THE batch president 
		if(!empty($data['batchpres']))
		{
			$dataThree= array(
				'batch_president' => $data['firstname'] . ' ' . $data['lastname'],
			);
				$this->db->WHERE('id', $data['batch']);
				$this->db->update('batch', $dataThree);
		}

		$url = base_url() . 'member/add/member';
		echo'
			<script>
				alert("Success!");
				location.href="'.$url.'";
			</script>
			';
	}

	//get the batch from the id provided
	public function getBatchFromID($id){
		$this->db->cache_on();
		$sql = "SELECT * from batch WHERE id = '".$id."'";
		$query = $this->db->query($sql);
		return $query->result();
	}

	//get all the members
	public function getAllMembers(){
		$this->db->cache_on();
		$query = $this->db->query("SELECT 
									members.id, 
									FirstName,
									LastName, 
									username, 
									password, 
									batch_name, 
									year, 
									chapter 
								  from members, batch 
								  WHERE 
								  	members.batch_id = batch.id");
		return $query->result();
	}

	//get all attorneys
	public function getAllAttorneys(){
		$this->db->cache_on();
		$query = $this->db->query("SELECT 
									members.id, 
									FirstName, 
									LastName 
								   from members 
								   WHERE 
								   	AttyOrNot = 'yes'");
		return $query->result();
	}

	//store the batch data
	public function createBatch($data){
		//Prepare the data
		$dataOne = array(
			'batch_name' => $data['batch_name'],
			'year' => $data['year'],
			'chapter' => $data['chapter'],
			'batch_president' => ''
		);

		//insert the data! :D 
		$this->db->insert('batch', $dataOne);
		if($this->db->affected_rows() == 0){
			echo $this->db->error();
		}else{

			//redirect
			$url = base_url() . 'member/add/batch';
			echo
			'<script>
			alert("Successfully Added Batch");
			location.href="'.$url.'";
			</script>';
		}
	}

	//get the member based on ID
	public function getMemberFromId($id){
		$sql = "SELECT 
					members.id, 
					FirstName, 
					LastName, 
					ContactNumber, 
					CurrentAddress, 
					PermanentAddress, 
					SlaveName, 
					username, 
					visible, 
					status, 
					role, 
					AttyOrNot, 
					image, 
					batch_name, 
					year, 
					chapter, 
					batch.id as batch_id, 
					batch_president 
				from members, batch 
				WHERE 
					members.id = $id AND
					members.batch_id = batch.id";
		$query = $this->db->query($sql, $id); 
		return $query->result();
	}

	//get last added members
	public function getLatestMembers(){
		$this->db->cache_on();
		$query = $this->db->query("SELECT * from members order by id DESC LIMIT 8");
		return $query->result();
	}

	//delete a member
	public function deleteMember($id){
		$sql = "DELETE from members WHERE id = ?";
		$query = $this->db->query($sql, [$id]);

		$url = base_url() . 'member/view/all';
		echo
		'<script>
		alert("Successfully Deleted");
		location.href="'.$url.'";
		</script>';
	}

	//delete work data
	public function deleteWork($id){
		$sql = "DELETE from work WHERE id = ?";
		$query = $this->db->query($sql, [$id]);
		echo $this->db->affected_rows();
	}

	//get member work status
	public function getWork($id){
		$this->db->cache_on();
		$sql = "SELECT * from work WHERE member_id = ?";
		$query = $this->db->query($sql, [$id]);
		return $query->result();
	}

	public function updateMember($data){

		if(!empty($data['atty'])){
			$checkIFAttorney = 'yes';
		}else{
			$checkIFAttorney = '';
		}

		$dataOne = array(
			'batch_id' => $data['batch'],
			'FirstName' => ucwords($data['firstname']),
			'LastName' => ucwords($data['lastname']),
			'ContactNumber' => $data['contact'],
			'CurrentAddress' => ucwords($data['curr-addr']),
			'PermanentAddress' => ucwords($data['p-addr']),
			'AttyOrNot' => $checkIFAttorney,
			'SlaveName' => ucwords($data['slave-name']),
			'username' => $data['username'],
			'hashed_password' => password_hash($data['password'], PASSWORD_BCRYPT),
			'visible' => $data['password'],
			'role' => $data['role'],
			'status' => $data['status']
		);
		$this->db->WHERE('id', $data['member_id']);
		$this->db->update('members', $dataOne);

		$count = count(array_filter($data['work-place']));
		if($count){
			for($i = 0; $i < $count; $i++){
				$dataSomething = [
					'member_id' => $data['member_id'],
					'WorkPlace' => $data['work-place'][$i],
					'WorkPosition' => $data['work-position'][$i],
					'years' => $data['years-working'][$i]
				];
				$this->db->insert('work', $dataSomething);
			}
		}
		if(!empty($data['curr-work-place'])){
			$countAgain = count(array_filter($data['curr-work-place']));
			if($countAgain > 0){
				for($i = 0; $i < $countAgain; $i++){
					$dataTwo = [
						'WorkPlace' => $data['curr-work-place'][$i],
						'WorkPosition' => $data['curr-work-position'][$i],
						'years' => $data['curr-years-working'][$i]
					];
					$this->db->WHERE('id', $data['curr-work-id'][$i]);
					$this->db->update('work', $dataTwo);
				}
			}
		}

		if(!empty($data['batchpres'])){
			$dataThree= array(
				'batch_president' => ucwords($data['firstname']) . ' ' . ucwords($data['lastname']),
			);
			$this->db->WHERE('id', $data['batch']);
			$this->db->update('batch', $dataThree);
		}

		$this->session->set_flashdata('success','Updated successfully.');
		redirect(base_url() . 'member/view/all','refresh');
	}

	//update the batch
	public function updateBatch($data){
		$dataOne = [
			'batch_name' => $data['batch_name'],
			'year' => $data['year'],
			'chapter' => $data['chapter']
		];
		$this->db->WHERE('id', $data['batch_id']);
		$this->db->update('batch', $dataOne);

		// if($this->db->affected_rows() == 0){
		// 	print_r($this->db->error());
		// }
		// else{
			$url = base_url() . 'member/add/batch';
			echo
			'<script>
			alert("Successfully Updated");
			location.href="'.$url.'";
			</script>';
		// }
	}

	//update the profile
	public function updateProfile($data){

		//Super important if else, if the member_id has been modified, or if it has been erased, or anything like that, then redirect their asses to the profile page with a message
		if(empty($data['member_id']) || !array_key_exists('member_id', $data) || $data['member_id'] != $this->session->id){
			$this->session->set_flashdata('error', 'NOW YOU HAVE DONE SOMETHING SERIOUSLY WRONG.');
			redirect(base_url() . 'member/profile','refresh');
		}else{
			$config = array(
				[
					'field' => 'firstname',
					'label' => 'first name',
					'rules' => 'trim|required|regex_match[/^[a-z ñ .\-]+$/i]',
					'errors' => [
						'regex_match' => 'The %s is <b>NOT</b> in the correct format'
					],
				],
				[
					'field' => 'lastname',
					'label' => 'last name',
					'rules' => 'trim|required|regex_match[/^[a-z ñ .\-]+$/i]',
					'errors' => [
						'regex_match' => 'The %s is <b>NOT</b> in the correct format'
					],
				],
				[
					'field' => 'curr-addr',
					'label' => 'current address',
					'rules' => 'trim|required|regex_match[/^[a-zA-Z0-9, .\-]+$/i]',
					'errors' => [
						'regex_match' => 'The %s is <b>NOT</b> in the correct format'
					],
				],
				[
					'field' => 'p-addr',
					'label' => 'permanent address',
					'rules' => 'trim|required|regex_match[/^[a-zA-Z0-9, .\-]+$/i]',
					'errors'=> [
						'regex_match' => 'The %s is <b>NOT</b> in the correct format'
					],
				],
				[
					'field' => 'slave-name',
					'label' => 'Baptismal Name',
					'rules' => 'trim|regex_match[/^[a-zA-Z0-9, .\-]+$/i]|callback_check_if_unique[SlaveName]',
					'errors'=> [
						'regex_match' => 'The %s is <b>NOT</b> in the correct format'
					],
				],
				[
					'field' => 'contact',
					'lavel' => 'contact number',
					'rules' => 'regex_match[/^\d{11}(\/\d{11})?(\/\d{11})?$/]',
					'errors' => [
						'regex_match' => 'Use this format please "09xxxxxxxxx", do not use +63 or dashes "-"'
					],
				],
				[
					'field' => 'username',
					'label' => 'Username',
					'rules' => 'trim|required|regex_match[/^[a-zñ .\-]+$/i]|callback_check_if_unique[username]',
					'errors' => [
						'regex_match' => 'The %s is <b>NOT</b> in the correct format!'
					],
				],
				[
					'field' => 'password',
					'label' => 'password',
					'rules' => 'trim|required|regex_match[/^[a-zA-Z0-9ñ]+$/]'
				]
			);

			//set the initial rules
			$this->form_validation->set_rules($config);

			//assign the work place data array
			if(isset($data['curr-work-place'])){
				$curr_work_place = $data['curr-work-place'];

				/*
					Check if the user has work place data, impossible nga naay work position and years pero walay work place diba? na katok na..
				*/
					if(count($curr_work_place) > 0){

						//assign work position data to variable
						$curr_work_position = $data['curr-work-position'];

						//assign years working data to variable
						$curr_years_working = $data['curr-years-working'];

						//reiterate each curr work place to set rules
						foreach($curr_work_place as $i=>$val){

							$this->form_validation->set_rules("curr-work-place[".$i."]", "current work place", "trim|regex_match[/^[\w\d\s_.-]+$/]", [
								'regex_match' => 'This work place format is NOT valid'
							]);
							$this->form_validation->set_rules("curr-work-position[".$i."]", "current work position", "trim|regex_match[/^[\w\d\s_.-]+$/]",[
								'regex_match' => 'This work position format is NOT valid'
							]);
							$this->form_validation->set_rules("curr-years-working[".$i."]", "number of years working", "trim|regex_match[/^[\w\d\s_.-]+$/]",[
								'regex_match' => 'This format is NOT valid'
							]);
						}
					}
				}

				//check for form validation errors
				if ($this->form_validation->run() == FALSE){
					//if there are errors return them to the login page
					$this->displayEditProfilePage();
				}

			else{ //if everything is okay then proceed

				//set the upload path to this variable;
				$upload_path = realpath(FCPATH.'images/profile/');

				//if the user has provided for an image then process it
				if(!empty($_FILES['user-image']['name'])){
					
					//delete the user's old image first
					$this->deleteImage($upload_path, $this->get('image_file_name', $data['member_id']));

					//set configurations
					$config['upload_path']          =  $upload_path;
					$config['allowed_types']        = 'jpg|png';
					$config['max_size']             = 0;
					$config['max_width']            = 0;
					$config['max_height']           = 0;
					$config['encrypt_name'] = TRUE;

					//load the library
					$this->load->library('upload', $config);

					//try to upload
					if ( ! $this->upload->do_upload('user-image')){
						//there is an error and redirect it to the edit page with the error ofcourse
						$error = array('error' => $this->upload->display_errors());
						$this->session->set_flashdata('error',$error['error']);
						redirect(base_url() . 'member/edit/profile','refresh');

					}else{ //the image has been uploaded, yehey!

						//get the image data
						$image_data = $this->upload->data();

						//assign the image filename to variable for use later on update
						$user_image = $image_data['file_name'];

						//set up image library configuration
						$config['image_library'] = 'gd2';
						$config['source_image'] = $image_data['full_path'];
						$config['create_thumb'] = FALSE;
						$config['width'] = 750;
						$config['height'] = 500;

						//load the image library
						$this->load->library('image_lib', $config);
						
						$somethingAgain = ['image' => $user_image];

						$this->db->WHERE('id', $data['member_id']);
						$this->db->update('members', $somethingAgain);

						//if the image could not be resized then display the error back to the edit page
						if (!$this->image_lib->resize()){
							$error = array('error' => $this->image_lib->display_errors());
							$this->session->set_flashdata('error',$error['error']);

							//there is an error so we delete the image!
							$this->deleteImage($upload_path, $image['file_name']);

							//redirect to the edit page
							redirect(base_url() . 'member/edit/profile','refresh');
						}
					}
				}

				$username = xss_clean($data['username']);
				$password = xss_clean($data['password']);

				//check if the person is an attorney
				if(!empty($data['atty'])){
					$checkIFAttorney = 'yes';
				}else{
					$checkIFAttorney = '';
				}

				$dataOne = array(
					'FirstName' => xss_clean(ucwords($data['firstname'])),
					'LastName' => xss_clean(ucwords($data['lastname'])),
					'ContactNumber' => xss_clean($data['contact']),
					'CurrentAddress' => xss_clean(ucwords($data['curr-addr'])),
					'PermanentAddress' => xss_clean(ucwords($data['p-addr'])),
					'AttyOrNot' => $checkIFAttorney,
					'SlaveName' => xss_clean(ucwords($data['slave-name'])),
					'username' => $username,
					'hashed_password' => password_hash($password, PASSWORD_BCRYPT),
					'visible' => $password
				);
				$this->db->WHERE('id', $data['member_id']);
				$this->db->update('members', $dataOne);

				$count = count(array_filter($data['work-place']));
				if($count){
					for($i = 0; $i < $count; $i++){
						$dataSomething = [
							'member_id' => $data['member_id'],
							'WorkPlace' => xss_clean($data['work-place'][$i]),
							'WorkPosition' => xss_clean($data['work-position'][$i]),
							'years' => xss_clean($data['years-working'][$i])
						];
						$this->db->insert('work', $dataSomething);
					}
				}
				if(!empty($data['curr-work-place'])){
					$countAgain = count(array_filter($data['curr-work-place']));
					if($countAgain > 0){
						for($i = 0; $i < $countAgain; $i++){
							$dataTwo = [
								'WorkPlace' => xss_clean($data['curr-work-place'][$i]),
								'WorkPosition' => xss_clean($data['curr-work-position'][$i]),
								'years' => xss_clean($data['curr-years-working'][$i])
							];
							$this->db->WHERE('id', $data['curr-work-id'][$i]);
							$this->db->update('work', $dataTwo);
						}
					}
				}
				$this->session->set_flashdata('success','Successfully updated profile');
				redirect(base_url() . 'member/profile','refresh');
			}
		}
	}


	//delete the user's old image on the images/profile folder
	public function deleteImage($path, $fileName){

		//set up the file
		$file = $path.'/'.$fileName;

		// if it exists delete it
		if (file_exists($file)) {

			//here we ACTUALLY delete the image
			unlink($file);
		}
	}

	//display the edit profile page
	public function displayEditProfilePage(){
		$data['member'] = $this->user->getMemberFromId($this->session->id);
		$data['title'] = 'MKP - Edit Profile';
		$this->load->view('admin/editProfile', $data);
	}

	//get batch members
	public function getBatchMembers($id){
		$batch_id = (int) $this->get('batch_id', $id);

		$this->db->cache_on();
		$sql = "SELECT 
					FirstName, 
					LastName, 
					ContactNumber, 
					members.id as id, 
					batch_president 
				from members, batch  
				WHERE 
					members.batch_id = ? AND 
					batch.id = ?";
		$members = $this->db->query($sql, [$batch_id, $batch_id]);
		return $members->result();
	}
}