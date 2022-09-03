<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="ko">
{% load static %}
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<link rel="stylesheet" href="{% static 'css/footer.css' %}">
<!-- CSS only 헤더와 무조건 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/ui/dist/fancybox.css"/>
</head>
<body>
    <div class="footer_section layout_padding" style="
    margin-top: 140px;
">
        <div class="container">
         <div class="footer_logo"><a href="../"><img src="/static/img/foot-logo2.png"></a></div>
           <div class="input_bt">
              <nav class="mail_bt"><i class="bi bi-envelope"></i> Email : team4@team.four</nav>
              {% comment %} <span class="subscribe_bt" id="basic-addon2"><a href="#">Subscribe</a></span> {% endcomment %}
           </div>
           <div class="footer_menu">
              <ul>
                 <li><a href="#">개인정보취급방침</a></li>
                 <li><a href="#">홈페이지 이용약관</a></li>
                 <li><a href="#">게시판</a></li>
                 <li><a href="#">공지사항</a></li>
                 <li><a href="#">캠핑 맵</a></li>
              </ul>
           </div>
           <div class="location_main"><i class="bi bi-telephone"></i> 고객&nbsp센터 : <a href="#"> 02-1111-1111</a></div>
        </div>
     </div>
     <div class="copyright_section">
        <div class="container">
           <p class="copyright_text">© 2022 All Rights Reserved. Design by <a href="#">Free html Django</a></p>
        </div>
     </div>
</body>
</html>