<?php include("./inc/header_login.inc.php");?>
<?php


    $submit = @$_POST['submit'];
    $fname = "";
    $lname = "";
    $username = "";
    $pwd = "";
    $pwd2 = "";
    $dos = "";      //date of sign up
    $email = "";
    $dob = "";
    $country = "";
    $u_exist = "";      //check if username exists.

//Getting Form elements.
    $fname = strip_tags(@$_POST['fname']);
    $lname = strip_tags(@$_POST['lname']);
    $username = strip_tags(@$_POST['userName']);
    $pwd = strip_tags(@$_POST['password']);
    $pwd2 = strip_tags(@$_POST['rep_password']);    //date of sign up
    $email = strip_tags(@$_POST['eID']);
    //$dob = strip_tags(@$_POST['dob']);
    $country = strip_tags(@$_POST['country']);



//Post registration
if ($submit) {
    //if user has entered his firstname and last name 
   $query = "SELECT email FROM user WHERE email='$email'"; 
   $re=mysqli_query($con,$query);
    if(mysqli_num_rows($re)==0) {
        if($fname && $lname && $email && pwd && pwd2) {
            if($pwd == $pwd2)   {
                $pwd = md5($pwd);
                $query ="INSERT INTO user(email,password,firstName,lastName) VALUES ('$email','$pwd','$fname','$lname')";
                mysqli_query($con,$query);
                die("<h2>Welcome to Sensa</h2>Login to your account to get started ...");
            }
            else    {
                echo "Your passwords don't match!";
            }
        }
        else {
            echo "All fields should be filled";
        }
    }
    else {
        echo "user already exist";
    }
}

//login code
if (isset($_POST["user_login"]) && isset($_POST["password_login"])) {
    $user_login=$_POST["user_login"];
    $password_login =strip_tags(@$_POST['password_login']);
	$md5password_login = md5($password_login);
    $query = "SELECT * FROM user WHERE email='$user_login' AND password='$md5password_login'"; // query the person
    $userCount =mysqli_query($con,$query);//Count the number of rows returned
    
    if(mysqli_num_rows($userCount)>0){
     
       while($row = mysqli_fetch_array($userCount,MYSQLI_ASSOC)){ 
             $uid = $row["userID"];
       }
       
         $_SESSION["userID"] = $uid;
		 $_SESSION["user_login"] = $user_login;
		 header("location:home.php");
         exit();
   }
    else {
        echo "The information is incorrect";
        exit();
    }
}

?>



	<body id="login_body">
        
        <img id="logo" src="assets/logo1.png" alt="logo of Sensa.">
        
        <p id="tagline"><a id="different1">Different</a> <a id="people">People</a> <a id="have">Have</a> <a id="different2">Different</a> <a id="opinions">Opinions</a></p>
        
        <div class="login">
            <h4>Welcome</h4>
            <form action="logIn.php" method="post">
                <input id="username" type="text" name="user_login">
                <input id="password" type="password" name="password_login">
                <p id="forgot"><a>Forgot password?</a></p>
                <input id="login_button" type="submit" name="log">
            </form>
            <p id="or">  Or</p>
            <ul class="social-icons">
				<li><a href="#" class="social-icon"> <i class="fa fa-facebook"></i></a></li>
				<li><a href="#" class="social-icon"> <i class="fa fa-google-plus"></i></a></li>
								</ul><br>
            <p id="continue"><a >Continue with Email</a></p>
        
        </div>
        <div class="signup">
            <h4>Sign Up!</h4>
            <form action="logIn.php" method="post">
                <input type="text" name="fname" style="width:49%" placeholder="First Name" />
                <input type="text" name="lname" style="width:49%" placeholder="Last Name" />
                <input type="text" name="eID" placeholder="E-mail ID" />
                <input type="password" name="password" placeholder="Password" />
                <input type="password" name="rep_password" placeholder="Confirm Password" />
                <input type="date" name="dob" style="width:150px"  /><br>
                <input type="radio" name="gender" value="Male" id="male">
                <label for="male">Male</label>&nbsp;&nbsp;&nbsp;
                <input type="radio" name="gender" value="Female" id="female">
                <label for="female">Female</label>
                <input type="submit" name="submit" value="Register">
                <p id="already_user"><a>Already a user?</a></p>
            </form>
        </div>
        <div id="quotesection" >
            <p id="quote">"Everything we hear is an opinion, not a fact. Everything we see is a perspective, not the truth."</p><br>
            <p id="author">-Marcus Aurelius</p>
        </div>
<?php include("./inc/footer_login.inc.php");?>
		
        <script type="text/javascript">
            $(document).ready(function(){
                $("#continue").click(function(){
                    $(".signup").show(); 
                    $(".login").hide();});
                $("#already_user").click(function(){
                    $(".signup").hide(); 
                    $(".login").show();});
                
            });
        </script>
	</body>
</html>