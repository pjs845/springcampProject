<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="en">
    <head>
        <title>Sign_Up(camping9)</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        
        <link href="/css/signup_style.css" rel="stylesheet" type="text/css" media="all" />
    </head>

    <style>
    input:invalid{
        border-color: pink;
    }
    form.was-validated input:invalid{
        border-color: red;
    }
    </style>

    <script>
        document.querySelectorAll("input").forEach(input => {
            input.addEventListener("invalid", () => {
              // 검증 후 폼 요소에 was-validated 클래스로 표시해 둔다
              document.forms[0].classList.add("was-validated")
            })
        }) 

        input.addEventListener("invalid", () => {
            console.log(input.validity)
        })
/**
   * ValidityState {
   *   badInput: false,  // 잘못된 입력
   *   customError: false, // 커스텀 오류
   *   patternMismatch: false, // 패턴 오류
   *   rangeOverflow: false, // 범위 초과 오류
   *   rangeUnderflow: false, // 범위 미달 오류
   *   stepMismatch: false, // 간격 오류
   *   tooLong: false, // 길이 오류
   *   tooShort: false, // 길이 오류
   *   typeMismatch: false, // 타입 오류
   *   valid: false, // 검증 결과
   *   valueMissing: true // 필수값 오류
   * }
   */

        const validityMessage = {
            badInput: "입력이 잘못되었습니다.",
            patternMismatch: "요청한 형식과 다릅니다",
            rangeOverflow: "범위를 초과하였습니다",
            rangeUnderflow: "범위에 미달하였습니다",
            stepMismatch: "간격에 맞게 입력하세요",
            tooLong: "최대 글자 미만으로 입력하세요",
            tooShort: "최소 글자 미만으로 입력하세요",
            typeMismatch: "형식에 맞게 입력하세요",
            valueMissing: "이 필드를 입력하세요",
        }

        function getMessage(validity) {
            for (const key in validityMessage) {
              if (validity[key]) {
                return validityMessage[key]
              }
            }
        }

        function showError(input) {
            input.setCustomValidity(getMessage(input.validity) || "")
        }

        input.addEventListener("invalid", () => {
            // 커스텀 에러메세지 설정
            showError(input)
        })
        
        
    </script>
	<body class="img" style="background-image:url(/img/signup7.png);">
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-7 col-lg-5">
					<div class="login-wrap">
		      	<h3 class="text-center mb-4">SIGN_UP</h3>
						<form name="signup" class="signup-form" method=POST action='signup.do'>
                            <div class="form-group mb-3">
                                <label class="label" for="email">email</label> 
                                <input name = "email" type="text" class="form-control" placeholder="메일" pattern ="^(?=.*[a-zA-Z])(?=.*\d)(?=.*[@.]$" minlength="11" required title="영문과 숫자만 입력 가능합니다!">
                                <span class="icon fa fa-paper-plane-o"></span>  
                            </div>
                            <div class="form-group mb-3">
                                <label class="label" for="name">Full Name</label>
                                <input name = "name" type="text" class="form-control" placeholder="이름" minlength="2" maxlength="10" >
                                <span class="icon fa fa-user-o"></span>
                            </div>
                            <div class="form-group mb-3">
                                <label class="label" for="phone">phone number</label>
                                    <input name = "phone" id="phone" type="text" class="form-control" placeholder="전화번호" minlength="10" pattern="^01(?:0|1|[6-9])-(?:\d{3}|\d{4})-\d{4}$" required title="10-11개의 숫자를 입력하세요!">    
                                <span class="icon fa fa-phone"></span>  

                            </div>    
                            <div class="form-group mb-3">
                                <label class="label" for="password">Password</label>
                                <input name = "password" id="password" type="password" class="form-control" placeholder="비밀번호" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$" required title = "최소 8자리에서 최대 16자리까지 숫자, 영문, 특수문자 각 1개 이상 포함">
                                <span toggle="#password" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                                <span class="icon fa fa-lock"></span>
                            </div>
                            <div class="form-group mb-3">
                                <label class="label" for="password">confirm password</label>
                                <input name = "password2" id="password-confirm" type="password" class="form-control" placeholder="비밀번호 확인" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$" required title = "비밀번호가 일치하지 않습니다!">
                                <span toggle="#password-confirm" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                                <span class= "icon fa fa-lock"></span>
                            </div>
                            <div class="form-group">
                                <label class="label" for="password">Sign up</label>
                                <button type="submit" class="form-control btn btn-white submit px-3" style="background-color:#e8d5cf">회원가입</button>
                            </div>
                        </form>
                        <br>    
                    <center>            
                        <label class="label" for="signin"> I'm already a member!</label>
                        <a href="../login" style="color:#bf97bc">login</a>
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
        </script>

 


 <script>
        function signupForm()
            {
                var form = document.signup;

                if(form.name.value !== form.name.value.split(" ")[0])
                {
                    alert("공백이 존재합니다. 다시 입력해 주세요!");
                    form.name.focus();
                    return false;
                }
                form.submit();
                
                
             
</script>
<script>
	$(document).on("keyup", "#phone", function(){
		$(this).val($(this).val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--","-"));	
	
	});
</script>
    