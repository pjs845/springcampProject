<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="ko">
{% load static %}
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>캠핑구 공지사항</title>
<link rel="stylesheet" href="{% static 'css/style.css' %}">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link rel="stylesheet" href="{% static 'css/content.css' %}">
<link rel="stylesheet" href="{% static 'css/notice_style.css' %}">
</head>
<body>
    {% include "topmenubar.html" %}   
    <!-- 미들 -->
    <div class="board-middle">
        <div class="board-image"><img src="/static/img/np4.jpg" alt=""></div>
        <div class="board-text">
            <p>공지사항</p>
        </div>
    </div>
    <div class="tstyle_view">
        <div class="title">{{ content.subject }}</div>
        <ul class="head">
            <li class="write"><strong>작성자</strong><span>{{ content.writer }}</span></li>
            <li><span> </span></li>
            <li class="date"><strong>작성일시</strong><span><i class="bi bi-calendar-check"></i>&nbsp;{{ content.rdate|date:'Y.m.d. H:i' }}</span></li>
            <li><span> </span></li>
            <li class="hit"><strong>조회수</strong><span>{{ content.count }}</span></li>
        </ul>
        <div class="tb_contents">
                {% if content.upload_files %}
                    <div class="col-12 text-right">
                        <span>첨부파일 :</span>
                        <a href="{% url 'notice_download' content.id %}" ><i class="bi bi-paperclip"></i>{{ filename|truncatechars:25 }}</a>  
                    </div>
                {% endif %}
                {% if content.photo %}
                <img style="display:block; margin-left: auto; margin-right: auto; margin-top:60px; margin-bottom:90px;"  src="{{ content.photo.url }}" ><br>
                {% endif %}
                {{ content.content }}
                <br/><br/><br/><br/><br/><br/>
        </div>
        <br/>
        <button class="button_2" style="display: inline-block; margin: 0 5px;  float:right; width:100px; border-radius:10px; border:double; background-color:#dae7f7;" onclick = "location.href = '/notice'">목록
        </button>
    </div>
    
    <br/><br/><br/><br/>
    <!-- 미들 끝 -->
    {% include "footermenubar.html" %}
</body>
</html>