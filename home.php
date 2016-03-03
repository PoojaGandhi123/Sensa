<?php
include("./inc/header.inc.php");

 
?>


<section class="main_content">
			<div id="cards">
				<p class="card">  Profile page for: <?php echo $uname;?></p>
			   
				<p id="status" class="card">
                    <form action="<?php echo $username; ?>" method="POST">
                            <textarea id="post" name="post" rows="4" cols="60"></textarea>
                            <input type="submit" name="send" value="Post" style="background-color: #DCE5EE; float: right; border: 1px solid #666; color:#666;height:53px; width: 53px;" />
                         </form>
                          
                    
                   </p>
                
                <p class="card"></p>
            </div>  
        
			
        </section>    
        <footer>
            <div>
                <p>&copy; 2016 Sensa</p>
            </div>     
        </footer>    
    </body>
</html>