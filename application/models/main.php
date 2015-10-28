<?php
class main extends CI_Model {
	public function get_all_users(){
		$query = "SELECT * FROM users
		WHERE fb_access_token = ?";
	}


}
?>