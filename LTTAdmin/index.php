<?php


include ('config.php');
session_start();

?>





<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->

<style>

#success-ret {
    background: #DEF1D8;
    color:green;
    padding:10px;
    margin:10px;
    display:none;
    position:fixed;
    right:15px;
    top:15px;
	z-index:100;
  }

  
  #error-ret {
    background: #EFDCDD;
    color:red;
    padding:10px;
    margin:10px;
    display:none;
    position:fixed;
    right:15px;
    top:15px;
	z-index:100;
  }

</style>


</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-50 p-r-50 p-t-77 p-b-30">
			<div id="error-ret"></div>
            <div id="success-ret"></div>
				<form id="logform" class="login100-form validate-form">
					<span class="login100-form-title p-b-55">
						Login
					</span>

					<div class="wrap-input100 validate-input m-b-16" data-validate = "Name is required">
						<input class="input100" type="text" id="username" placeholder="Username">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-user"></span>
						</span>
					</div>

					<div class="wrap-input100 validate-input m-b-16" data-validate = "Password is required">
						<input class="input100" type="password" id="pass" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-lock"></span>
						</span>
					</div>

					<div class="contact100-form-checkbox m-l-4">
						<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
						
					</div>
					
					<div class="container-login100-form-btn p-t-25">
						<button id="login" class="login100-form-btn" type="submit" name="login">
							Login
						</button>
					</div>

				   
				</form>
			</div>
		</div>
	</div>



	
<script type="text/javascript" src="js/jquery.js"></script>
	
	<script type="text/javascript">
      $(document).ready(function(){

      $("#login").on("click",function(e){
      e.preventDefault();
      var name=$("#username").val();
      var password=$("#pass").val();

	  if(name == "" || password == "")
      {
        $("#error-ret").html("All fields are required").slideDown();
        $("#success-ret").slideUp();
      }
      else{

      $.ajax({
        url : "php/adminlogin.php",
        type : "POST",
        data : {name : name, password : password},
        success : function(data){
          if(data ==1){
            $("#logform").trigger("reset");
            $(location).attr('href', 'dashboard.php');

          }
          else{
              $("#error-ret").html("Invalid Credentials").slideDown();
              $("#success-ret").slideUp();
          }
          
        }
      });
	  }

    })

      });
    </script>
	
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>