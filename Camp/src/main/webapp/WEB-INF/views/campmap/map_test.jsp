<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
{% load static %}
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=k3y82rodr8&submodules=geocoder"></script>
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
    
</head>

<body>
<div style="width:1250px; height:820px; display:block; position: relative;">
<div id="map" style="width:900px;height:710px; display:block; float:left;"></div>
<div class="search">
	<input id="address" type="text" placeholder="캠핑장 검색">
	<input id="submit" type="button" value="검색">
</div>
<div class="fl selectsido">
    <select name="cate1" id="cate1" class="searchSelect" onchange="sido(this.options[this.selectedIndex].value,this.options[this.selectedIndex].id)">
        <option value="전국" selected="" id="00">전국</option>
                                <option value="서울" id="01">
            서울						</option>
                                <option value="경기" id="02">
            경기						</option>
                                <option value="인천" id="03">
            인천						</option>
                                <option value="강원" id="04">
            강원						</option>
                                <option value="충남" id="05">
            충남						</option>
                                <option value="대전" id="07">
            대전						</option>
                                <option value="충북" id="08">
            충북						</option>
                                <option value="세종" id="06">
            세종						</option>
                                <option value="부산" id="16">
            부산						</option>
                                <option value="울산" id="11">
            울산						</option>
                                <option value="대구" id="10">
            대구						</option>
                                <option value="경북" id="09">
            경북						</option>
                                <option value="경남" id="15">
            경남						</option>
                                <option value="전남" id="13">
            전남						</option>
                                <option value="광주" id="14">
            광주						</option>
                                <option value="전북" id="12">
            전북						</option>
                                <option value="제주" id="17">
            제주						</option>
            </select>
</div>
<div id="scrollbox" style="overflow:scroll; width:300px; height:670px; padding:10px;">
    <table>
		<tbody id="mapList">
            {% include "map_paging.html" %}
        </tbody>
	</table>
</div>
<span class="fl pannel2-2-4" style="width:300px; height:20px;">
    <ul id="dyn_ul" class="pagination" style="justify-content: center;"></ul>
</span>
</div>
</body>
</html>