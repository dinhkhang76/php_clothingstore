<?php
  
  class Frontend extends Controller{
  public function __construct(){
      parent::__construct();
      echo" Day la controller frontend";
  	}
  	    function index(){
      $this->model=new Frontend_Model;
      echo"</br>";
      $data=array();
      $data['page']='frontend/pages/home';
      $this->load->view("frontend/index",$data);
  	}


    function home(){
      $data=array();
      $data['page']='frontend/pages/index';
      $this->load->view("frontend/index",$data);
    }

   
    function greeting($name, $age){
  		echo" Xin chào ".$name. " | Tuổi:".$age;

  	}

    function getFrontendModel(){
      $data['list']= $this ->model-> testFrontendModel();
      print_r($data['list']);
    }



 } 
  ?>