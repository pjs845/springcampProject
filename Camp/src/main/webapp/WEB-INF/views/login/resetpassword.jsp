<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">


<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원정보수정_비밀번호수정</title>

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
        <h3 class="mb-3" align = center>비밀번호수정</h3>
        <form class="validation-form" action = 'resetpassword/resetpassword_ok/' method = "POST" novalidate>
			{% csrf_token %}
			<br>      
            <div class="mb-2">
                <label for="password">PASSWORD</label>
                <input name = "password1" type="password" class="form-control" placeholder="비밀번호확인" required>
                <br>
                <label for="password2">CONFIRM PASSWORD</label>
                <input name = "password2" type="password" class="form-control" placeholder="비밀번호재확인" required>
                
            <div class="invalid-feedback">
            <br>
            </div>
          <hr class="mb-4">
        
          <div class="mb-4"></div>
          <button class="btn btn-info btn-lg btn-block" type="submit">UPDATE</button>
        </form>
      </div>
    </div>
    <footer class="my-3 text-center text-small">
    </footer>
  </div>
  <script>
    window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }

          form.classList.add('was-validated');
        }, false);
      });
    }, false);
	
  </script>
  <script>
		$('#menuButton').on('click',function(e){
			//클릭했을 때 액션이 있다면 여기에 스크립트 작성
		}).mouseenter(function(e){
			var _this = $(this);
			_this.addClass('hover');
		}).mouseleave(function(e){
			var _this = $(this);
			_this.removeClass('hover');
		});
  </script>
