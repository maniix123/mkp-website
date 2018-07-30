<?php
if(! function_exists('checkSessionData')){
	/* create the function */
	function checkSessionData(){

		//get instance, access the CI superobject
		$CI =& get_instance(); 
		
		if($CI->session->id){ //check if there is a sesssion.
			return true;
		}
		else{//else GTFO of here
			return false;
		}
	}
}

if(! function_exists('checkIfAdmin')){

	//create the admin function
	function checkIfAdmin(){
		$CI =& get_instance();
		if($CI->session->role == 'super-admin'){
			return true;
		}
		else{
			return false;
		}
	}
}