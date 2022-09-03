<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="ko">
{% load static %}
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>캠핑구</title>
<link rel="stylesheet" href="{% static 'css/style.css' %}">
<link rel="stylesheet" href="{% static 'css/search.css' %}">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<script src="https://cdn.jsdelivr.net/npm/@fancyapps/ui@4.0/dist/fancybox.umd.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/ui/dist/fancybox.css"/>
<script src="{% static 'js/mouse.js' %}"></script> 
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css">
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=k3y82rodr8&submodules=geocoder"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
    <style>
        hr {
            background-color: grey;
            border:20px;
        }
    </style>
</head>
<body>
    <hr width=97% align=left>
    <div class="facil"> 지역 </div>
    {% for x in x1 %}
    <h5 style="font-family: 'RIDIBatang';">{{x.주소}}</h5>
    {% endfor %}
    <br>
    <section class="camp_map">
        <div style="width:1060px; height:820px; position: relative; margin-left:auto; margin-right:auto;">
            <div id="map" style="width:1020px;height:510px; display:block; float:left;"></div>
            
            {% include "map_paging_sub.html" %}
            
            
            </div>
    </section> 
    
    <br>
    <br>
    <br>
    <br>
    
</body>
</html>