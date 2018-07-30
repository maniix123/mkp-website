<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class blogcontroller extends CI_Controller {
	public function __construct(){
		parent::__construct();

		$this->load->library('session');
	}

	public function view($blog){
		if(!isset($this->session->name)){
			redirect(base_url(), 'refresh');
		}
	}
	public function index(){
		echo 'Display all the blog pages here bitch';
	}
}
