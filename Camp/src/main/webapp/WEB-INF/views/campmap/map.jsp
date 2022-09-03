<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>캠핑구</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/search.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<script src="https://cdn.jsdelivr.net/npm/@fancyapps/ui@4.0/dist/fancybox.umd.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/ui/dist/fancybox.css"/>
<script src="js/mouse.js"></script> 
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css">
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=k3y82rodr8&submodules=geocoder"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
</head>
<body>
	<%@ include file="/WEB-INF/views/menubar/topmenubar.jsp" %>
    <center class="board-middle">
        <h1 style="font-size:50px; font-family:'GangwonEduPowerExtraBoldA'; font-weight:bold;padding-bottom:20px;">Camp Map</h1>
        <font color='gray' size='4' face='hanna'>
    <hr width='1200' size='2' color='gray' noshade>  
    </center>
    <section class="camp_map">
        <div style="width:1060px; height:820px; position: relative; margin-left:auto; margin-right:auto;">
            <div id="map" style="width:700px;height:510px; display:block; float:left;"></div>
            <div class="search">
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
                <input id="address" type="text" placeholder="캠핑장 검색" style="height:36px;margin-left:40px;">
                <input id="submit" type="button" value="검색" style="height:35px;">
            </div>
            <div id="scrollbox" style="overflow:scroll; width:350px; height:470px; padding:10px;">
                <table>
                    <tbody id="mapList">
                    	<%@ include file="/WEB-INF/views/campmap/map_paging.jsp" %>
                    </tbody>
                </table>
            </div>
            <span class="fl pannel2-2-4" style="width:300px; height:20px; float:none;">
                <ul id="dyn_ul" class="pagination" style="justify-content: center;"></ul>
            </span>
            </div>
    </section> 
    <%@ include file="/WEB-INF/views/menubar/footermenubar.jsp" %>
</body>
</html>