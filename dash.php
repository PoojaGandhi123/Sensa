<?php include("./inc/header.inc.php"); ?>
<?php  

if (isset($_GET['u'])) {
	$username = mysqli_real_escape_string($con,$_GET['u']);
	//if (ctype_alnum($username)) {
 	//check user exists
	$query = "SELECT email, firstName FROM user WHERE email='$username'";
	$check=mysqli_query($con,$query);
    if (mysqli_num_rows($check)===1) {
	$get = mysqli_fetch_assoc($check);
	
	$firstname = $get['firstName'];	
	}
	else
	{
	echo "User doesn't exist";	
	exit();
	}
 
}
?>		
 
<h2> Profile page for: <?php echo  $firstname;?></h2>

<section class="main_content">
			<div id="cards">
				<p class="card"></p>
			
				<p class="card"></p>
                
                <p class="card"></p>
            </div>  
        
			<aside>
				<p>The formal term 'document' is defined in Library and information science and in documentation science, as a basic theoretical construct. It is everything which may be preserved or represented in order to serve as evidence for some purpose. The classical example provided by Suzanne Briet is an antelope: "An antelope running wild on the plains of Africa should not be considered a document, she rules.
				</p>
			</aside>
        </section>    
        <footer>
            <div>
                <p>&copy; 2016 Sensa</p>
            </div>     
        </footer>    
    </body>
</html>