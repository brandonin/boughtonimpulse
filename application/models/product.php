<?php
class product extends CI_Model {
	public function get_all_users(){
		$query = "SELECT * FROM users
		WHERE fb_access_token = ?";
	}
	public function get_all_affiliates(){
		$query = "SELECT * FROM affiliates";
		return $this->db->query($query)->result_array();
	}
	public function test(){
		$query = "SELECT url FROM test";
		return $this->db->query($query)->result_array();
	}
	public function create_user($post)
	{
		// echo 'in the model create user';
		// var_dump ($post);
		// die();
		$this->load->library('form_validation'); 
		// $this->form_validation->set_eroor_delimiters('<p class="error">', '</p>');
		$this->form_validation->set_rules('first_name', 'First Name', 'required|min_length[2]|alpha');
		$this->form_validation->set_rules('last_name', 'Last Name', 'required|min_length[2]|alpha');
		$this->form_validation->set_rules('email', 'Email', 'required|valid_email|is_unique[users.email]');
		$this->form_validation->set_rules('password', 'Password', 'required|min_length[8]|matches[pw_confirmation]');
		$this->form_validation->set_rules('pw_confirmation', 'Password Confirmation', 'required');
		//if validations pass create user
		// otherwise display error messages
		if($this->form_validation->run() != false){
			// $salt = bin2hex(openssl_random_pseudo_bytes(22));
			$first_name = $post['first_name'];
			// echo $first_name;
			// die();
			$last_name = $post['last_name'];
			$email = $post['email'];
			$password = $post['password'];
			$salt = bin2hex(openssl_random_pseudo_bytes(22));
			$encrypted_password = md5($password . '' . $salt);
			$query = "INSERT INTO users (first_name, last_name, email, encrypted_pw, salt, created_at, updated_at) VALUES (?, ?, ?, ?, ?, NOW(), NOW())";
			$this->db->query($query, array($first_name, $last_name, $email, $encrypted_password, $salt));
			$this->db->insert_id();
			// return 1;

	}else{
		$errors = validation_errors();
		return $errors;
		// var_dump($errors);
		// die();
		} 

	} 

	public function login_user($post)
	{
		// echo 'Hello';
		$email = $post['email'];
		$query = "SELECT * FROM users WHERE email = ?";
		$user =  $this->db->query($query, array($email))->row_array();

		if($user){
		$test_password = md5($post['password'].''.$user['salt']);
		if($user){
			if($user['encrypted_pw'] == $test_password){
			// echo 'valid!';
			return $user['id'];
			}
		}
		return "<p class='error'>Invalid Email and Password Combination</p>";
	}

}

}
?>