<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<!-- templatemo 418 form pack -->
    <!-- 
    Form Pack
    http://www.templatemo.com/preview/templatemo_418_form_pack 
    -->
	<title>Forgot Password</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet" type="text/css">
	<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">	
</head>
<body class="templatemo-bg-gray">
	<div class="container">
		<div class="col-md-12">
			<h1 class="margin-bottom-15">Password Reset</h1>
			<form class="form-horizontal templatemo-forgot-password-form templatemo-container" role="form" action="forgot_password_ok/" method="post">	
			{% csrf_token %}
				
				<div class="form-group">
		          <div class="col-md-12">
		          	Please enter your email address that you registered in our website.
		          </div>
		        </div>		
		        <div class="form-group">
		          <div class="col-md-12">
		            <input name = "name" type="text" class="form-control" id="name" placeholder="이름">	            
		          </div>              
		        </div>
                <div class="form-group">
		          <div class="col-md-12">
		            <input name = "email" type="text" class="form-control" id="email" placeholder="이메일">	            
		          </div>  
                </div>
                
                 {% comment %} <div class="form-group">
		          <div class="col-md-12">
		            <input type="text" class="form-control" id="authentication" placeholder="인증번호">	            
		          </div>     
                </div> {% endcomment %}
                
		        <div class="form-group">
		          <div class="col-md-12">
		            <input type="submit" value="submit" class="btn btn-danger">
                    <br><br>
                    <a href="login-1.html">Login One</a> |
                    <a href="login-2.html">Login Two</a>
		          </div>
		        </div>
		      </form>
		</div>
	</div>
</body>
</html>