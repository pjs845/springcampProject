<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
  <head>
  	<title>log_in</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <link href="/css/signup_bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/css/signup_style.css" rel="stylesheet" type="text/css" media="all" />
    
	</head>
	<body class="img" style="background-image: url(/img/signup2.png);">
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-7 col-lg-5">
					<div class="login-wrap">
                        <br><br><br>
		      	<h3 class="text-center mb-4">Log_in</h3>
					<form action="logincheck.do" method="post" class="signup-form">
					<div class="form-group mb-3">
		      			<label class="label" for="email">email</label>
		      			<input name = "email" type="text" class="form-control" placeholder="email 주소">
		      			<span class="icon fa fa-paper-plane-o"></span>
		      		</div>
	            	<div class="form-group mb-3">
	            		<label class="label" for="password">Password</label>
	              		<input name = "password" id="password" type="password" class="form-control" placeholder="비밀번호">
				  		<span toggle="#password" class="fa fa-fw fa-eye field-icon toggle-password" required=""></span>	 
	             		<span class="icon fa fa-lock"></span>
	           		</div>
	            	<div class="form-group">
                    <label class="label" for="password">Sign up</label>
	            	<button type="submit" class="form-control btn btn-white submit px-3" style="background-color:#e8d5cf" >로그인</button>
	            </div>
	          </form>
             <br>    
            <center>            
                <label class="label" for="sign up"> I want to be a member!</label>
				<a href ="../login/signup.do"  style="color:#bf97bc">Sign up</a>
            </center>
          </div>
				</div>
			</div>
		</div>
	</section>
    <script src="/js/signupjquery.min.js"></script>
    <script src="/js/signuppopper.js"></script>
    <script src="/js/signupbootstrap.min.js"></script>
    <script src="/js/signupmain.js"></script>

	</body>
</html>