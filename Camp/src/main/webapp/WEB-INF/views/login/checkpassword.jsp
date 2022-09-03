<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">


<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>비밀번호확인</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <style>

	@import url('https://fonts.googleapis.com/css2?family=Gugi&family=Jua&display=swap');
    
	body {
		
		font-family: 'Jua', sans-serif;
		min-height: 100vh;
		background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c));
		background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
		background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
		background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
		background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
    }

    .input-form {
      max-width: 680px;

      margin-top: 80px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
	}
	#menuButton{
		background-color: blue;
	}
	#menuButton.hover{
		background-color: red;
	}

    
  </style>
</head>

<body>
  <div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h3 class="mb-3" align = center>변경할 비밀번호를 입력해 주세요</h3>
        <form class="validation-form" action ='checkpassword' method = "POST" novalidate>
			<br>      
            <div class="mb-2">
                <label for="password1">변경할 비밀번호</label>
                <input name="password" type="password" id="password1" class="form-control" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$" required title = "최소 8자리에서 최대 16자리까지 숫자, 영문, 특수문자 각 1개 이상 포함" required>
                <br>
                <label for="password2">변경할 비밀번호 확인</label>
                <input name = "password2" type="password" id="password2" class="form-control" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$" required title = "최소 8자리에서 최대 16자리까지 숫자, 영문, 특수문자 각 1개 이상 포함" required>
                
            <div class="invalid-feedback">
            <br>
            </div>
          <hr class="mb-4">
        
          <div class="mb-4"></div>
          <button class="btn btn-info btn-lg btn-block" type="submit" onclick="passCheck()" >확인</button>
        </form>
      </div>
    </div>
  </div>
 <script>
 function passCheck() {
     var pass1 = document.getElementById('password1').value;
     var pass2 = document.getElementById('password2').value;
     if( pass1 != pass2 ) {
       alert("비밀번호 변경실패\n 비밀번호가 일치 하지 않습니다\n다시 시도해주세요");
       return false;
       /* location.href = "../main" */
     } else{
       alert("비밀번호 변경 성공");
       return true;
     }
 }
 </script>
  
