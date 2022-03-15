<?php
$host     = 'localhost';
$user     = 'root'; // user database
$password = '';  //password database 
$db       = 'sehatbersama'; //nama database 
  
$con = mysqli_connect($host, $user, $password, $db) or die(mysqli_error());
?>