<?php
include("./inc/connect.inc.php"); 
$post=$_POST['post'];
if($post!="") {
    $date_added=date("Y-m-d");
}
else {
    echo "You must enter something to post";
}

?>