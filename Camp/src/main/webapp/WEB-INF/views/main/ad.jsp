<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="ko">
{% load static %}
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>캠핑구</title>
<link rel="stylesheet" href="{% static 'css/style.css' %}">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/sketchy/bootstrap.min.css" integrity="sha384-RxqHG2ilm4r6aFRpGmBbGTjsqwfqHOKy1ArsMhHusnRO47jcGqpIQqlQK/kmGy9R" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<body>
    {% include "topmenubar.html" %}
    <!-- 미들 -->
    <div class="ad-main">
        <h1>캠핑장 등록 및 제휴문의</h1>
        <p></p>
        <form action="" id="joinForm">
            <ul class="join_box">
                <li class="checkBox">
                    <ul class="clearfix">
                        <li>이용약관, 개인정보 수집 및 이용,위치정보 이용약관(선택), 프로모션 안내 메일 수신(선택)에 모두 동의합니다.</li>
                        <li class="checkAllBtn"><input type="checkbox" name="chkAll" id="chk" class="chkAll"></li>
                    </ul>
                </li>
            </ul>
        </form>  
    </div>
    <form method="get" action="">
    <table class="ad-middle">
        <tr class="first">
        <td class="one-td"><i class="bi bi-caret-left-fill"></i>구 분<i class="bi bi-caret-right-fill"></i></td>   
            <td class="two-td">
                <a href="#">광고문의</a>
                <a href="#">등록문의</a>
                <a href="#">기타문의</a>
            </td>
        </tr>
        <tr class="two">
            <td class="three-td"><i class="bi bi-caret-left-fill"></i>제 목<i class="bi bi-caret-right-fill"></i></td>
            <td><input type="text" name="title" id="title" maxlength="50" value="" size="50" class="input1" style="width:70%"></td>
            
        </tr>
        <tr class="three">
            <td class="four-td"><i class="bi bi-caret-left-fill"></i>성 명<i class="bi bi-caret-right-fill"></i></td>
            <td><input type="text" name="title" id="title" maxlength="20" value="" size="20" class="input2" style="width:50%"></td>
            
        </tr>
        <tr class="four">
            <td class="five-td"><i class="bi bi-caret-left-fill"></i>이메일<i class="bi bi-caret-right-fill"></i></td>
            <td><input type="text" name="title" id="title" maxlength="20" value="" size="20" class="input3" style="width:30%">
            @
            <input type="text" name="title" id="title" maxlength="20" value="" size="20" class="input4" style="width:55%">
            </td>
            <td>
                <select name="email3" id="email-check" style="width:120px">
                    <option value="">직접입력</option>
                    <option value="nate.com">nate.com</option>
                    <option value="naver.com">naver.com</option>
                    <option value="daum.net">daum.net</option>
                    <option value="gmail.com">gmail.com</option>
                    <option value="chol.com">chol.com</option>
                    <option value="hotmail.com">hotmail.com</option>
                    <option value="empal.com">empal.com</option>
                    <option value="korea.com">korea.com</option>
                    <option value="lycos.co.kr">lycos.co.kr</option>
                    <option value="yahoo.co.kr">yahoo.co.kr</option>
                </select>
            </td>
        </tr>
        <tr class="five">
            <td class="six-td"><i class="bi bi-caret-left-fill"></i>핸드폰<i class="bi bi-caret-right-fill"></i></td>
            <td><input type="text" name="title" id="title" maxlength="20" value="" size="20" class="input5" style="width:20%">
            -
            <input type="text" name="title" id="title" maxlength="20" value="" size="20" class="input5" style="width:20%">
            -
            <input type="text" name="title" id="title" maxlength="20" value="" size="20" class="input5" style="width:20%">
            </td>
        </tr>
        <tr class="six">
            <td class="seven-td"><i class="bi bi-caret-left-fill"></i>내 용<i class="bi bi-caret-right-fill"></i></td>
            <td><textarea class="input6" name="content" style="width:100%"; height: 100px;></textarea></td>
            
        </tr>
        <tr>
            <td class="td1">&nbsp;</td>
            <td class="td2">
                <label for="callfb" style="color:#458906;font-size:14px"><input type="checkbox" name="callfb" id="callfb" value="1"> 고객센터 유선연락 원하지 않음 </label>
                <ul>
                    <li>접수된 내용의 개인 정보는 최대 1년까지 보관되며, 1년 이후 모든 개인정보는 삭제처리 됩니다.</li>
                    <li>고객님들께서 전달해 주신 내용은 담당자 확인 후 이메일로 신속히 답변 드리겠습니다.</li>
                    <li>연락을 원하시지 않을 경우 아래의 ‘고객센터 유선연락 원하지 않음’ 에 체크 부탁 드립니다. </li>
                </ul>
            </td>
        </tr>
    </table><center>
    <button type="submit" class="checkBtn"> 등록</button>
    </center>
</form>
    <!-- 미들 끝 -->
    {% include "footermenubar.html" %}
</body>
</html>