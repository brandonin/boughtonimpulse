<?php
class main extends CI_Model {
	public function get_all_users(){
		$query = "SELECT * FROM users
		WHERE fb_access_token = ?";
	}
	public function get_all_affiliates(){
		$query = "SELECT * FROM affiliates";
		$this->db->query($query)->result_array();
	}

}
?>