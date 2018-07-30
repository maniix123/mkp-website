<?php

class Blog_model extends CI_Model {
	public function fetchWhat($parameter = 'all', $slug = NULL){
		// if($parameter == 'all'){
		// $query = $this->db->query("SELECT * FROM blog");
		$this->db->limit(10);
		$this->db->get('blog');
		return $query->result();
		// }
	}

	public function record_count(){
		return $this->db->count_all("blog");
	}


	public function fetch_data($limit, $id){
		$this->db->cache_on();
        $this->db->limit($limit, $id);
        $query = $this->db->get("blog");
 
        if ($query->num_rows() > 0) 
        {
            foreach ($query->result() as $row) 
            {
                $data[] = $row;
            }    
            return $data;
        }
        return false;
	}

	public function getAuthor($id){
		$query = $this->db->query('Select 
									members.FirstName, 
									members.LastName,
									members.id as user_id 
									from members, blog 
									where 
										members.id = blog.user_id and 
										members.id = "'.$id.'"');
		$result =  $query->row();
		$userData = [];
		$userData['Name'] = $result->FirstName .' '. $result->LastName;
		$userData['user_id'] =  $result->user_id;
		return $userData;
	}

}