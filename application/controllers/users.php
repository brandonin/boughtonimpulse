<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends CI_Controller {

	public function __construct(){
		parent::__construct();
		// $this->output->enable_profiler(TRUE);
		$this->load->model('User');
	}

	// public function login_1()
	// {
	// 	$this->session->set_userdata('accessToken',$this->input->post('accessToken'));
	// 	$data['accessToken'] = $this->session->userdata('accessToken');
	// 	$this->session->set_userdata('uid',$this->input->post('uid'));
	// 	$data['uid'] = $this->session->userdata('uid');
	// 	$result = $this->User->create_user($data);
	// }

	public function login()
	{
		$data['accessToken'] = $this->input->post('accessToken');
		$data['uid'] = $this->input->post('uid');
		$data['email'] = $this->input->post('email');
		$data['first_name'] = $this->input->post('first_name');
		$data['last_name'] = $this->input->post('last_name');

		$user = $this->User->login_validation($data);
        if($user) 
        {
	   		$this->session->set_userdata($user);
	   		$status = array("status" =>"user already exists, logged in");
	   		echo json_encode($status);
      		// redirect('/main/index');
	    } 
	    else 
	    {
	      $id = $this->User->create_user($data);
	      $this->session->set_flashdata('success', 'Welcome! Registration was successful!');
	      $status = array("status" =>"user created, logged in");
	      echo json_encode($status);
	      	// echo({"status": "user created, logged in"});
	      // redirect('/users/find/' . $id);
	    }
	}

	public function find($id)
	{
		$user = $this->User->get_by_id($id);
 		$this->session->set_userdata($user);
 		redirect('/main/index');
	}




}
