<?php 

include("./inc/connect.inc.php"); 
session_start();

if(!isset($_SESSION["user_login"])) {

}
else {
  $uname=$_SESSION["user_login"]; 
}

?>
<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Sensa</title>
		<link rel="stylesheet" type="text/css" href="css/logIn.css">
        <script src="jquery-1.12.0.js"></script>
        <script src="js/main.js"></script>
        <link rel="shortcut icon" type="image/x-icon" href="assets/fevicon.ico">
	</head>