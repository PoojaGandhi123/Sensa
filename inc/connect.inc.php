<?php
$con=mysqli_connect("localhost","root","") or die("couldnt connect");       //change according to your database.
 mysqli_select_db($con,"webdb") or die("coudnt find db");

?>