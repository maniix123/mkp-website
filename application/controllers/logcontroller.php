<?php defined('BASEPATH') OR exit('No direct script access allowed');

class logcontroller extends CI_Controller {

	private $logViewer;

	public function __construct(){
		parent::__construct();

		$this->logViewer = new \CILogViewer\CILogViewer();
	}

	/**
	 * Display the fucking blogs
	 * @return nothing 
	 */
	public function index(){

		if(!checkSessionData()){
			redirect('login');
			die();
		}elseif (checkIfAdmin() === false) {
			$this->session->set_flashdata('error', 'I\'m afraid you can\'t access that page');
			redirect('member');
			die();
		}
	   echo $this->logViewer->showLogs();
	}

	public function logMessage($message){
		log_message('error', $message);
	}
}