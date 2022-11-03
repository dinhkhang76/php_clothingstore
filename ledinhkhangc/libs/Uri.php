<?php
	  	class Uri{
	  		function __construct(){
	  			$uri = $_SERVER['REQUEST_URI'];
	  $uri =rtrim($uri,'/');
	  $uri= explode('/',$uri);
	  while(count($uri)>0 && $uri[0]!="index.php"){
	  	$uri= array_slice($uri,1);
	  }
	  print_r($uri);
	  if(!isset($uri[1])){
	  	require "controllers/frontend.php";
	    require "models/frontend_model.php";
	  	$controller = new Frontend();
	  	$controller->index();
	  	return false;
	 
	  }
	  $file="controllers/".$uri[1].".php";
	  if(file_exists($file)){
	  	require $file;
	  }
	  else{
	  	require "controllers/error.php";
	  	$controller= new _Error();
	  	return false;
	  }

	   $controller = new $uri[1];
	   $controller ->loadModel($uri[1]);
	   if(isset($uri[3])){
	   	if(method_exists($controller,$uri[2])){
	   		call_user_func_array(array($controller, $uri[2]), array_slice($uri,3));

	   	}
	   	else{
	   		echo "Phuong thuc khong ton tai";
	   	}
	   }
	   else{
	   	if(isset($uri[2])){
	   	$f= $uri[2]; 
	   	
	   	if(method_exists($controller,$f)){  
		   	$controller -> $f();
		  }
	   else{
	   	echo" Phuong thuc khong ton tai";
	   }
	  }
	   else{
	   	$controller->index();

	   }
	   
	   }
	  		 

  	}
	  		}
?>