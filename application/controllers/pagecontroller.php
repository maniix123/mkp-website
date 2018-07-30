<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class pagecontroller extends CI_Controller {

	public function view($page = 'index')
	{
		if ( ! file_exists(APPPATH.'views/'.$page.'.php'))
		{
			show_404();
		}
		else{
			if($page == 'index'){
				$data['title'] = 'Home';
			}
			else{
				$data['title'] = ucfirst($page);
			}
		}
		$this->load->view($page, $data);
	}
}
