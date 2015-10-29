<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends CI_Controller {

	public function __construct(){
			parent::__construct();
			// $this->output->enable_profiler(TRUE);
			$this->load->model('product');
	}

	public function index()
	{
		$data['affiliates'] = $this->product->get_all_affiliates();
		$data['test'] = $this->product->test();
		$this->load->view('dashboard', $data);
	}
	public function register(){

	}
	public function login(){
		
	}
	public function get_page_content(){
		$data['affiliates'] = $this->product->get_all_affiliates();
		$data['test'] = $this->product->test();		
		$this->load->view('partials/products', $data);
	}
}

?>
