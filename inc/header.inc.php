<?php 

include("./inc/connect.inc.php"); 
session_start();

if(!isset($_SESSION["user_login"])) {

}
else {
  $uname=$_SESSION["user_login"]; 
}

?>

<!DOCTYPE html>
<html>
    <head>
        <title>Feed - Sensa</title>
        <link rel="stylesheet" type="text/css"  href="css/main.css"/>
        <script src="jquery-1.12.0.js"></script>
		<script src="js/main.js"></script>
        <link rel="shortcut icon" type="image/x-icon" href="assets/fevicon.ico">
    </head>
    
    
    <body>
        <header class="headerMenu">
          <nav class="navbar">
                <ul>
                  <li id="imageElement"><a href="index.html"> <img src="assets/logo.png" alt="Logo"/></a></li>  
                  
                    <li id="searchElement">  
                    <div id="wrap">
                        <form action="#" >
                            <input id="search" name="search" type="search" placeholder="Search me!">
                            <button type="submit" id="search_submit"></button>
                        
                        </form>
                    </div>
                    </li>
                 
                <li id="notifElement">
                    <a href="#"><img id="notif" src="assets/notification.png" alt="notification"></a>
                </li>
                    
                <li id="profElement">
                    <img id="prof" src="assets/Pic.jpg" alt="Profile Picture">
                </li>              
             </ul>
           </nav>
            
        </header>
        <div id="lightbox"></div>
        <div id="notif_submenu">
            <div><button type="button">Mark as read</button></div>
            <div id="notifs">
                <p>
                    Notification 1
                </p>
                <p>
                    Notification 2
                </p>
                <p>
                    Notification 3
                </p>
            </div>                
        </div>
        <div id="prof_submenu" >
            <div id="items">
                <p>
                    <a href="askQ.html">Ask Sensa</a>
                </p>
                <p>
                    <a href="profile.html">Your Profile</a>
                </p>
                <p>
                    <a href="aboutUs.html">About Us</a>
                </p>
                <p>
                    <a href="Settings.html">Settings</a>
                </p>
                <p>
                    <a href="activity_feed.html">Your Activity</a>
                </p>
                <p>
                    <a href="logIn.html">Log out</a>
                </p>
            </div>                
        </div>