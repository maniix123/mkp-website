<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class logincontroller extends CI_Controller {
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

	//Display the login page
	public function index(){

		//Use this shit below to test and destroy the fucking session.
		// session_destroy();


		//Check if there already is a session
		if(checkSessionData()){
			
			//redirect to the members dashboard
			redirect('member');

		}
		else{
			$data['title'] = 'Members Login';
			$data['error_message'] = 'You need to login first';
			$this->load->view('login.php', $data);
		}
	}

	//the login function
	public function login(){

		//Validate the data and check if we are to redirect to the admin dashboard or not!
		$this->user->loginUser($this->input->post());
	}
}
