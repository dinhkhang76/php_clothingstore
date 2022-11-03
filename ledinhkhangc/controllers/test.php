<?php
  
  class Test extends Controller{
  public function __construct(){
      echo" Day la controller Test";
  	}
  	public function index(){
  		echo" Day la phuong thuc index cua controller Test";
  	}
  	function test($a, $b,$c,$d){
  		echo $a,$b,$c,$d;
  	}

        
  }

  ?>