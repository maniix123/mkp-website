<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class admincontroller extends CI_Controller {

	public function __construct(){
		parent::__construct();

		//Load the user model
		$this->load->model('User_model', 'user');

		//Load the blog model
		$this->load->model('Blog_model', 'blog');
		
		//Load the helpers
		$this->load->helper('security');
		$this->load->helper('form');

		//Load the session library
		$this->load->library('form_validation');

		//load the pagination library
		$this->load->library('pagination');
	}

	/**
	 * Display the index dashboard page
	 * @return void
	 */
	public function index(){
		//Check if user has already logged in
		if(checkSessionData()){ //guarded with a route..
			$data['totalMembers'] = count($this->user->getAllMembers());
			$data['totalAtty'] = count($this->user->getAllAttorneys());
			$data['totalBatches'] = count($this->fetchBatches());
			$data['latestMembers'] = $this->user->getLatestMembers();
			$data['title'] = 'MKP Members - Home';
			$this->load->view('admin/index', $data);
		}
		else{
			redirect('login');
		}
	}

	/**
	 * Just some stupid idiot function
	 * @param  String $a Wala lang.
	 * @return void   
	 */
	public function checkIfExists($a, $b){
		$data['title'] = 'Page not found';
		$this->load->view('admin/admin-templates/header', $data);
		$this->load->view('admin/admin-templates/sidebar');
		$this->load->view('errors/html/error_403');
	}

	/**
	 * Display the add pages
	 * @param  $type The passed in data from the URI
	 * @return
	 */
	public function displayAddPage(string $type){

		if(!checkSessionData()){
			redirect('login');
			die();
		}elseif (checkIfAdmin() === false) {
			$this->session->set_flashdata('error', 'I\'m afraid you can\'t access that page');
			redirect('member');
			die();
		}
		
		//check if the passed in parameter is a string and check if it is equal to "member".
		if(is_string($type) && $type == 'member'){
			$data['title'] = 'MKP Members - Add Members';
			$this->load->view('admin/add-'. $type, $data);
		}

		//check again if it is a string and check if it is equal to "batch".
		else if(is_string($type) && $type == 'batch'){
			$data['title'] = 'MKP Members - Add Batch';
			$data['batches'] = $this->fetchBatches('addbatchpage');
			$this->load->view('admin/add-' .$type. '.php', $data);
		}
		else{
			//else load the error view again.
			$data['title'] = 'Page not found';
			$this->load->view('admin/admin-templates/header', $data);
			$this->load->view('admin/admin-templates/sidebar');
			$this->load->view('errors/html/error_403.php');
		}
	}

	/**
	 * Just some random function
	 * @return void
	 */
	// public function ambot(){
	// 	$data['title'] = 'MKP Members - Add Members';
	// 	$this->load->view('admin/add-member.php', $data);
	// }

	/**
	 * Some unused function
	 * @return void
	 */
	public function fetchChapters(){}

	/**
	 * Fetch all batches
	 * @param  string $type Determine if it is an ajax or not
	 * @return string       returns the json_encoded query result or the query result itself
	 */
	public function fetchBatches($type = ''){

		//return the result
		if($type == 'select')
		{
			$query = $this->db->query("SELECT *, id as batch_id from batch");
			echo json_encode($query->result());
		}elseif($type=='addbatchpage'){
			$query = $this->db->query("SELECT *, id as batch_id from batch");
			return $query->result();
		}
		else{
			//prepare the query
			$query = $this->db->query("Select batch.batch_name, batch.chapter, batch.year, batch.id as batch_id, count(*) as numberOfMembers from batch inner join members on batch.id = members.batch_id group by batch.batch_name, batch.id ORDER BY batch.batch_name ASC");
			return $query->result();
		}
	}

	/**
	 * Create the user
	 * @return void
	 */
	public function store(){
		
		//Validate this fucking shit
		$this->form_validation->set_rules(
			'username', 
			'username', 
			'required|is_unique[members.username]',
			[
				'is_unique' => 'THE USERNAME IS ALREADY TAKEN!'
			]
		);
		$this->form_validation->set_rules(
			'slave-name',
			'slave-name',
			'required|is_unique[members.SlaveName]',
			[
				'is_unique' => 'THE SLAVE NAME IS ALREADY TAKEN!'
			]
		);
		if ($this->form_validation->run() == FALSE){

			//if there are errors return them to the edit page
			$this->displayAddPage('member');

		}else{

			//Add the User to the Database
			$this->user->create($this->input->post());
		}

	}

	/**
	 * The view pages for members, attorneys and batches
	 * @param  string, int $something the passed in data
	 * @return void
	 */
	public function view($something, $second = NULL){

		//check if the user is logged in!
		if(!checkSessionData()){
			redirect('login');
			die();
		}
		//get the role of the logged in user...
		$data['role'] = $this->user->get('role') != 'super-admin' ? 'hide' : '';

		if($something == 'all'){//if the passed data is "all", display all members

			//get every member;
		$data['members'] = $this->user->getAllMembers();

			//set the stupid title
		$data['title'] = 'MKP Members - All Members';

			//and load the view.
		$this->load->view('admin/displayAllMembers', $data);

		//if the passed in data is "attorneys", display all attorneys
	}elseif($something == 'attorneys'){

			//get all attorneys
		$data['members'] = $this->user->getAllAttorneys();

			//set the stupid title
		$data['title'] = 'MKP Members - All Attorneys';

			//and load the view (again)..
		$this->load->view('admin/displayAllAttorneys', $data);

		//if the passed data is a number
	}elseif (is_numeric($something)) {

		//First check if the account exists!!
		$ambot = $this->user->checkIfAccountExists($something);

			if($ambot == 0){ //if 0 show the error page
				$data['title'] = 'Page not found';
				$this->load->view('admin/admin-templates/header', $data);
				$this->load->view('admin/admin-templates/sidebar');
				$this->load->view('errors/html/error_403');
			}
			else{ // else then show this piece of crap
				$data['member'] = $this->user->getMemberFromId($something);
				$data['title'] = 'MKP Members - Profile';
				$this->load->view('admin/profile',$data);
			}
		//if the passed data is "batches"
		}elseif($something == 'batches'){

		//get all batches from the database;
			$data['batches'] = $this->fetchBatches();

		//load the view
			$data['title'] = 'MKP Members - All Batches';
			$this->load->view('admin/displayAllBatches', $data);

	}else{//if none of the above, then kill yourself...
		$data['title'] = 'Page not found';
		$this->load->view('admin/admin-templates/header', $data);
		$this->load->view('admin/admin-templates/sidebar');
		$this->load->view('errors/html/error_403.php');
	}
}

	/**
	 * Function to display all the blogs on the admin side
	 * @return void just renders the blog view.
	 */
	public function displayBlogs(){

		$this->config->load('pagination', TRUE);
		$settings = $this->config->item('pagination');

		$config["base_url"] = base_url() . 'member/view/blogs';
		$total_row = $this->blog->record_count();
		$config["total_rows"] = $total_row;
		$config['num_links'] = 4;
		$this->pagination->initialize($config);
		if($this->uri->segment(4)){
			$page = ($this->uri->segment(4)) ;
		}
		else{
			$page = 1;
		}
		$data['blogs'] = $this->blog->fetch_data($settings["per_page"], $page);
		
		$str_links = $this->pagination->create_links();
		$data['links'] = explode('&nbsp;',$str_links );

		$data['title'] = 'MKP Members - Blogs';
		$this->load->view('admin/displayAllBlogs', $data);
	}

	/**
	 * The function to display the profile page.
	 * @return void 
	 */
	public function viewProfile(){

		//check if the user is logged in!
		if(!checkSessionData()){
			redirect('login');
			die();
		}
		$data['member'] = $this->user->getMemberFromId($this->session->id);
		$data['title'] = 'MKP Members - My Profile';
		$this->load->view('admin/profile', $data);
	}

	/**
	 * The functions to display the edit profile page.
	 * @return void 
	 */
	public function displayEditProfilePage(){

		//check if the user is logged in!
		if(!checkSessionData()){
			redirect('login');
			die();
		}
		$data['member'] = $this->user->getMemberFromId($this->session->id);
		$data['title'] = 'MKP Members - Edit Profile';
		$this->load->view('admin/editProfile', $data);
	}

	/**
	 * The function to create a batch
	 * @return void
	 */
	public function storeBatch(){
		$this->user->createBatch($this->input->post());
	}

	/**
	 * The edit member page for the admin
	 * @param  int $id id number passed from the uri
	 * @return void
	 */
	public function editMember($id){

		if(!checkSessionData()){
			redirect('login');
			die();
		}elseif (checkIfAdmin() === false) {
			$this->session->set_flashdata('error', 'I\'m afraid you can\'t access that page');
			redirect('member');
			die();
		}

		$data['title'] = 'MKP Members - Edit Members';
		$data['member'] = $this->user->getMemberFromId($id);
		$this->load->view('admin/edit-member.php', $data);
	}

	/**
	 * Update Member function with outside fucking validation
	 * @param  array $data fuckingshit
	 * @return void       
	 */
	public function updateMember($data){

		//validate the data
		if ($this->form_validation->run('update-member') == FALSE){

			//if there are errors return them to the edit page
			$this->editMember($data['member_id']);

		}else{

			$this->user->updateMember($data);

		}
	}

	/**
	 * The function to display the admin edit batch
	 * @param  int $id The batch id
	 * @return void    
	 */
	public function editBatch($id){

		if(!checkSessionData()){
			redirect('login');
			die();
		}elseif (checkIfAdmin() === false) {
			$this->session->set_flashdata('error', 'I\'m afraid you can\'t access that page');
			redirect('member');
			die();
		}

		$data['title'] = 'MKP Members - Edit Batch';
		$data['batch'] = $this->user->getBatchFromID($id);
		$this->load->view('admin/edit-batch.php', $data);
	}

	/**
	 * The function to display the delete page
	 * @param  int $id   The passed in id
	 * @param  string $type The passed in data to determine what to delete
	 * @return void
	 */
	public function displayDeletePage($id, $type){

		if(!checkSessionData()){
			redirect('login');
			die();
		}elseif (checkIfAdmin() === false) {
			$this->session->set_flashdata('error', 'I\'m afraid you can\'t access that page');
			redirect('member');
			die();
		}

		if($type == 'member'){
			$data['title'] = 'MKP Members - Display Member';
			$data['member'] = $this->user->getMemberFromId($id);
			$this->load->view('admin/deletemember', $data);
		}else{
			// show the delete batch delete page;
		}
	}

	/**
	 * The delete function
	 * @param  int $id   The id passed from the URL
	 * @param  string $type The passed in data to determine what to delete
	 * @return void       
	 */
	public function delete($id, $type){
		if($type == 'member')
		{
			$this->user->deleteMember($id);
		}
		elseif($type == 'batch-ajax'){
			$this->user->deleteWork($id);
		}
	}

	/**
	 * The update function
	 * @param  string $type The passed in data to determine what to update
	 * @return void
	 */
	public function update($type){
		if($type == 'member'){
			$this->updateMember($this->input->post());
		}
		elseif($type == 'batch'){
			$this->user->updateBatch($this->input->post());
		}
		elseif($type == 'profile'){
			$this->user->updateProfile($this->input->post());
		}
	}

	/**
	 * The logout function
	 * @return void
	 */
	public function logout(){

		//destroy the session
		session_destroy();

		//reditect to the login page
		redirect('login');
	}

	/**
	 * The delete cache function
	 * @return void
	 */
	public function deleteCache(){
		$this->db->cache_delete_all();
		$url = base_url() . 'member';
		echo
		'<script>
		alert("Cache deleted");
		location.href="'.$url.'";
		</script>';
	}
	/**
	 * Callback function to check if field is unique
	 * @param  string $passed_data The actual passed in data from form
	 * @param  string $field       The field to be checked
	 * @return bool                Return if true or false
	 */
	function check_if_unique($passed_data, $field) {

		//get the id if this is an update
		$id = $this->input->post('member_id');
		if($id == NULL){

			//this is when user updates his profile;
			$id = $this->session->id;
		}

		$result = $this->check_unique_field($id, $field, $passed_data);
		if($result == 0){
			$response = true;
		
		}else{
		
			$this->form_validation->set_message('check_if_unique', '%s is already taken. Please choose another');
			$response = false;
		}

		return $response;
	}

	/**
	 * Here we actually query the database
	 * @param  int    $id          The id that is passed
	 * @param  string $field       The field that will be checked
	 * @param  string $passed_data The actual text that is passed
	 * @return int                 The number of rows affected
	 */
	function check_unique_field($id, $field, $passed_data) {

		if($field == 'SlaveName' && empty($passed_data)){
			return 0;
			
		}else{

			$this->db->where($field, $passed_data);
			if($id) {
				$this->db->where_not_in('id', $id);
			}
			return $this->db->get('members')->num_rows();
		}	
	}
}
