<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>NAV BAR</title>
    <link href="/css/top.css" rel="stylesheet" type="text/css" media="all" />
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/ui/dist/fancybox.css"/>
</head>
<body>
    <header class="header-section">
        <div class="container-fluid">
            <div class="logo">
                <a href="/main">
                    <img src="/img/camp3.png"  alt="4조캠핑"></a>            
            </div>
            <div class="top-social">
            <c:choose>
            <c:when test="${empty member.email}">
            	<a href="/login/login.do"><i class="fa fa-pinterest-p" onclick="isLogin()"></i>로그인</a>
                <a href="/login/signup.do"><i class="bi bi-person-plus" onclick="isLogin('join')"></i> 회원가입</a>
            </c:when>
            <c:otherwise>
            	<a href="/login/mypage?email=${member.email}">마이페이지</a>
                <a href="/login/logout.do">로그아웃</a>
            </c:otherwise>          
            </c:choose>
            <c:if test="${loginError == false}">
	          	<script>
	          		alert("※Login Error※\n이메일 또는 패스워드를 확인하세요");
	          		location.href = "../login/login.do"
	          	</script>
	        </c:if>
	         <c:if test="${delError == false}">
	          	<script>
	          		alert("※회원탈퇴 오류※\n패스워드를 확인하세요");
	          		location.href = "../main"
	          	</script>
	        </c:if>
            </div>
            <div class="container">
                <div class="nav-menu">
                    <nav class="mainmenu mobile-menu">
                        <ul>
                            <li class="active"><a href="../main">메인</a></li>
                            <li><a href="/map">캠프맵</a></li>
                            <li><a href="/board/list">게시판</a></li>
                            <li><a href="/notice/notice">공지사항</a></li>
                            <li><a href="/market/market">캠핑마켓</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div id="mobile-menu-wrap"><div class="slicknav_menu"><a href="#" aria-haspopup="true" role="button" tabindex="0" class="slicknav_btn slicknav_collapsed" style=""><span class="slicknav_menutxt">메인</span><span class="slicknav_icon"><span class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span></span></a><nav class="slicknav_nav slicknav_hidden" aria-hidden="true" role="menu" style="display: none;">
                        <ul>
                            <li class="active"><a href="./index.html" role="menuitem">메인</a></li>
                            <li><a href="./about-us.html" role="menuitem">메뉴1</a></li>
                            <li><a href="./schedule.html" role="menuitem">메뉴2</a></li>
                            <li><a href="./gallery.html" role="menuitem">메뉴3</a></li>
                            <li class="slicknav_collapsed slicknav_parent"><a href="#" role="menuitem" aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row" style=""><a href="./blog.html">게시판</a>
                                <span class="slicknav_arrow">►</span></a><ul class="dropdown slicknav_hidden" role="menu" aria-hidden="true" style="display: none;">
                                    <li><a href="./about-us.html" role="menuitem" tabindex="-1">게시판 서브1</a></li>
                                    <li><a href="./blog-single.html" role="menuitem" tabindex="-1">게시판 서브2</a></li>
                                </ul>
                            </li>
                            <li><a href="./contact.html" role="menuitem">공지사항</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    </body>
</html>