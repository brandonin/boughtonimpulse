<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller {

	public function __construct(){
			parent::__construct();
			// $this->output->enable_profiler(TRUE);
			$this->load->model('product');
			$this->load->model('user');
	}

	public function index()
	{
		$data['affiliates'] = $this->product->get_all_affiliates();
		$data['test'] = $this->product->test();
		$this->load->view('dashboard', $data);
	}
	public function create()
	{

		// var_dump($this->input->post());
		// die();
		$result=$this->product->create_user($this->input->post());
		if(is_numeric ($result)){
			$this->session->set_userdata('user_id', $result);
			redirect('/');
		} else {
			$this->session->set_flashdata('regis_errors', $result);
			redirect('/');
		}

	}
	public function login()
	{

		$result = $this->product->login_user($this->input->post());
		if(is_numeric($result)){
			$this->session->set_userdata('user_id',$result);
			redirect('/');
		}else{
			$this->session->set_flashdata('login_errors', $result);
			redirect('/');
		}
		
	}
	public function get_page_content(){
		$data['affiliates'] = $this->product->get_all_affiliates();
		$data['test'] = $this->product->test();		
		$this->load->view('partials/page2', $data);
	}
	public function email_subscription(){
		$this->user->email_subscription($this->input->post());
	}
}

?>
