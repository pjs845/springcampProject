<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>캠핑구</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<script src="https://cdn.jsdelivr.net/npm/@fancyapps/ui@4.0/dist/fancybox.umd.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/ui/dist/fancybox.css"/>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css">

<script src="/js/mouse.js"></script> 
<link href="/css/search.css" rel="stylesheet" type="text/css" media="all" />
<link href="/css/style.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
     <%@ include file="/WEB-INF/views/menubar/topmenubar.jsp" %> 
    <div id="main_fullbg" style="height: 937px; background: url(&quot;/resources/img/ad.mp4&quot;) center center / cover no-repeat;">
        <div class="main_fullbg-wrap">
            <video muted autoplay loop src="/img/ad.mp4">
            </video>
            <div class="main-search" >
                <h2 id="bot">Search Your Campsite</h2>
            <form action="search_subpage/" method="post">
            <div class="search-box">  
                <input type="text" class="search-input" name="camp_name" placeholder="캠핑장 or 지역검색">
                <button type="submit" class="search-btn" >
                  <i class="fas fa-search"></i>
                </button>
            
              </div>
              <script>
              (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
              (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
              m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
              })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
            
              ga('create', 'UA-46156385-1', 'cssscript.com');
              ga('send', 'pageview');           
            </script>
       
            </div> <!-- main-search 끝-->
        </div>  <!-- main_fullbg-wrap 끝 -->
    <div class="middle-pannel2">
        <div class="pannel2-1">

            <div class="pannel2-1-1">
				<h2>Camping <span>Map</span></h2>
				<p class="pannel2-1-2">대한민국 캠핑 지도</p>
				<div class="pannel2-1-3"><img src="/img/map.gif" name="map" alt="" usemap="#campMap" id="Map">
					<map name="campMap" id="campMap">
					<area shape="poly" ONMOUSEOVER="mouseOver('/img/kmap-01.gif')" ONMOUSEOUT="mouseOut('/img/map.gif')" coords="49,59,51,58,56,55,69,46,78,75,66,75,49,74,51,68,48,59" alt="서울" class="kmap_01" onclick="sido('서울','01','');">
					<area shape="poly" ONMOUSEOVER="mouseOver('/img/kmap-02.gif')" ONMOUSEOUT="mouseOut('/img/map.gif')" coords="47,45,47,45,47,39,51,36,51,29,65,14,80,28,89,34,96,41,93,45,95,59,105,71,102,82,103,88,101,95,85,100,75,105,52,99,45,91,42,83,46,74,79,74,68,46,49,59,43,55,43,47" alt="경기" class="kmap_02" onclick="sido('경기','02','');">
					<area shape="poly" ONMOUSEOVER="mouseOver('/img/kmap-03.gif')" ONMOUSEOUT="mouseOut('/img/map.gif')" coords="15,53,28,41,42,51,44,58,47,63,51,71,46,73,34,73,22,60,22,54" alt="인천" class="kmap_03" onclick="sido('인천','03','');">
					<area shape="poly" ONMOUSEOVER="mouseOver('/img/kmap-04.gif')" ONMOUSEOUT="mouseOut('/img/map.gif')" coords="66,17,92,16,103,17,110,9,128,15,140,1,137,10,159,43,189,91,161,92,142,105,136,93,133,89,125,85,104,93,105,72,98,63,113,59,95,64,91,49,100,40,83,32,78,25,86,27" alt="강원" class="kmap_04" onclick="sido('강원','04','');">
					<area shape="poly" ONMOUSEOVER="mouseOver('/img/kmap-05.gif')" ONMOUSEOUT="mouseOut('/img/map.gif')" coords="40,84,26,101,14,116,26,125,23,131,29,138,34,137,38,145,37,148,37,158,49,164,61,159,62,152,76,154,74,146,72,132,76,126,71,118,78,106,56,100,48,100" alt="충남" class="kmap_05" onclick="sido('충남','05','');">
					<area shape="poly" ONMOUSEOVER="mouseOver('/img/kmap-07.gif')" ONMOUSEOUT="mouseOut('/img/map.gif')" coords="90,133,72,146,74,153,97,165,91,145,93,133" alt="대전" class="kmap_07" onclick="sido('대전','07','');">
					<area shape="poly" ONMOUSEOVER="mouseOver('/img/kmap-08.gif')" ONMOUSEOUT="mouseOut('/img/map.gif')" coords="139,97,130,122,121,124,108,134,110,141,114,145,116,153,110,168,99,168,96,160,94,152,92,141,94,125,82,104,91,100,117,84,133,90" alt="충북" class="kmap_08" onclick="sido('충북','08','');">
					<area shape="poly" ONMOUSEOVER="mouseOver('/img/kmap-09.gif')" ONMOUSEOUT="mouseOut('/img/map.gif')" coords="185,93,169,90,153,94,145,105,135,105,124,118,118,126,111,133,109,142,118,154,109,170,120,175,130,180,140,152,162,164,149,190,154,194,178,179,195,183,189,140,192,109,189,98,179,87" alt="경북" class="kmap_09" onclick="sido('경북','09','');">
					<area shape="poly" ONMOUSEOVER="mouseOver('/img/kmap-10.gif')" ONMOUSEOUT="mouseOut('/img/map.gif')" coords="147,189,127,188,131,185,132,166,138,149,164,164,145,191" alt="대구" class="kmap_10" onclick="sido('대구','10','');">
					<area shape="poly" ONMOUSEOVER="mouseOver('/img/kmap-11.gif')" ONMOUSEOUT="mouseOut('/img/map.gif')" coords="167,187,155,195,185,210,195,181,175,181,166,186" alt="울산" class="kmap_11" onclick="sido('울산','11','');">
					<area shape="poly" ONMOUSEOVER="mouseOver('/img/kmap-16.gif')" ONMOUSEOUT="mouseOut('/img/map.gif')" coords="177,201,135,226,137,230,155,243,183,220,182,211" alt="부산" class="kmap_16" onclick="sido('부산','16','');">
					<area shape="poly" ONMOUSEOVER="mouseOver('/img/kmap-15.gif')" ONMOUSEOUT="mouseOut('/img/map.gif')" coords="106,172,97,179,93,200,99,218,102,226,110,249,139,247,155,244,139,233,137,223,174,202,159,196,148,188,124,180,107,171" alt="경남" class="kmap_15" onclick="sido('경남','15','');">
					<area shape="poly" ONMOUSEOVER="mouseOver('/img/kmap-12.gif')" ONMOUSEOUT="mouseOut('/img/map.gif')" coords="42,160,49,164,59,154,74,152,85,160,109,169,95,182,93,208,76,210,55,198,45,199,33,203,35,189,41,176,45,171,41,168,41,161" alt="전북" class="kmap_12" onclick="sido('전북','12','');">
					<area shape="poly" ONMOUSEOVER="mouseOver('/img/kmap-13.gif')" ONMOUSEOUT="mouseOut('/img/map.gif')" coords="1,274,9,284,26,274,33,268,47,275,64,275,77,271,91,262,92,255,107,252,104,230,96,209,76,211,55,198,26,205,38,217,63,210,69,221,65,230,53,230,44,228,43,221,29,206,7,217,8,233,3,252,1,269" alt="전남" class="kmap_13" onclick="sido('전남','13','');">
					<area shape="poly" ONMOUSEOVER="mouseOver('/img/kmap-14.gif')" ONMOUSEOUT="mouseOut('/img/map.gif')" coords="44,214,40,218,41,224,47,227,65,230,69,218,58,208,43,213" alt="광주" class="kmap_14" onclick="sido('광주','14','');">
					<area shape="poly" ONMOUSEOVER="mouseOver('/img/kmap-17.gif')" ONMOUSEOUT="mouseOut('/img/map.gif')" coords="17,306,26,296,46,289,61,292,52,308,42,312,23,313,17,307" alt="제주" class="kmap_17" onclick="sido('제주','17','');">
					<area shape="poly" ONMOUSEOVER="mouseOver('/img/kmap-06.gif')" ONMOUSEOUT="mouseOut('/img/map.gif')" coords="80,101,73,118,77,125,73,135,74,144,93,136,93,124" alt="세종" class="kmap_06" onclick="sido('세종','06','');">
					</map>
				</div>
			</div>
        </div>
        <!-- 2번째 오른쪽 지도 -->
        <div class="pannel2-2">
            
            <div class="pannel2-2-1">
                <!--head-->
                <div class="pannel2-2-2">
                    <div class="fl pannel2-2-3 countbox"><span id="total_cnt"></span>개</div>
                    <div class="fl pannel2-2-4">
                     <%@ include file="/WEB-INF/views/main/pagingtest.jsp" %>
                        </div>
                        <nav aria-label="Page navigation example">		
                            <ul id="dyn_ul" class="pagination" style="justify-content: center;">
                              <!-- <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                              <li class="page-item"><a class="page-link" href="#">1</a></li>	    
                              <li class="page-item"><a class="page-link" href="#">Next</a></li> -->
                            </ul>
                          </nav>
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
                        <select name="cate2" id="cate2" class="searchSelect subselect" onchange="sido($('#cate1 option:selected').val(), this.options[this.selectedIndex].value, '')"></select>
                        <select name="cate3" id="cate3" class="searchSelect subselect" onchange="sido($('#cate1 option:selected').val(), $('#cate2 option:selected').val(), this.options[this.selectedIndex].value)"></select>
                    </div>
    
    
                    <a href="../page2" class="fr adq"><i class="bi bi-file-earmark-text"></i> 캠핑장 등록 및 광고문의</a>
                                    
                </div>
                <!--head-->
                <div class="camp_right_content">
                    <div class="camp_right_content" style="width:1100px;">
       	 			<%@ include file="/WEB-INF/views/main/paging.jsp" %>
            </div><!--kmapright-->
        </div><!--campinfo_wrap-->	
    </div>

        </div>
    </div>
	<%@ include file="/WEB-INF/views/menubar/footermenubar.jsp" %>
</body>
</html>