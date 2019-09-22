<?php
// ini_set('max_execution_time', 0); 
// ini_set('memory_limit','2048M');
defined('BASEPATH') OR exit('No direct script access allowed');

class testcontroller extends CI_Controller {

	public function __construct(){
		parent::__construct();

		//Load the model
		$this->load->model('User_model', 'user');

		//Load the helpers
		$this->load->helper('security');
		$this->load->helper('form');

		//Load the stupid session library
		$this->load->library('form_validation');
	}

	public function changePasswords(){
		$query = $this->db->query("SELECT 
									members.id,
									visible 
									from members");
		$members = $query->result();
		foreach ($members as $member => $value) {
			// $newpass = strtolower($value->visible);
			// echo $value->id . ' '. $newpass .'<br>';
			// $dataOne = array(
			// 	'hashed_password' => password_hash($newpass, PASSWORD_BCRYPT),
			// 	'visible' => $newpass
			// );
			// $this->db->WHERE('id', $value->id);
			// $this->db->update('members', $dataOne);
		}
	}
}
