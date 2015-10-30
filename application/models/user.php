<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class User extends CI_Model {

 public function get_all()
 {
   $query = "SELECT * FROM posts";

   return $this->db->query($query)->result_array();
 }

 public function login_validation($data)
 {
   $query = "SELECT id, fb_user_id, email, created_at FROM users WHERE fb_user_id = ?" ;
   $values = array($data['uid']); 
   $user = $this->db->query($query, $values)->row_array();
   return $user;
 }

 public function create_user($data)
 {
   $query = "INSERT INTO users (fb_user_id, fb_access_token, first_name, last_name, email, created_at, updated_at) VALUES (?,?,?, ?, ?, NOW(),NOW())";  
   $values = array($data['uid'], $data['accessToken'], $data['first_name'], $data['last_name'], $data['email']);
   $id = $this->db->insert_id($this->db->query($query, $values));
   return $id;
 }

 public function get_by_id($id)
 {
   $query = "SELECT * FROM users WHERE id = ?";
   $values = array($id);
   return $this->db->query($query, $values)->row_array();
 }
 public function email_subscription($data)
 {

   $query = "INSERT INTO email_subscriptions (email, created_at, updated_at)
   values (?, NOW(), NOW())";
   $values = array($data['email']);
   return $this->db->query($query, $values);
 }
}
?>