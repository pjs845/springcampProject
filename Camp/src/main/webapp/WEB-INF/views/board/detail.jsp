<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>게시판내용</title>
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/detail.css">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
    <%@ include file="/WEB-INF/views/menubar/topmenubar.jsp" %> 
    <!-- 미들 -->
    <div class="board-middle">
        <div class="board-image"><img src="/img/np5.jpg" alt=""></div>
        <div class="board-text">
            <p>게시판</p>
        </div>
    </div>
    <!--  <center class="board-middle">
        <h1>게시글내용</h1>
        <font color='gray' size='4' face='hanna'>
    <hr width='1400' size='2' color='gray' noshade>  
    </center>-->
    <div class="card" style="width:1100px; display:block; margin-left:auto; margin-right:auto;"> 
        <!--제목,분류,작성일-->
        <div class="card-header" style="background-color:#f0f8f9;">
            <strong>제목:&nbsp ${board.title}</strong><span style="text-align:center"></span>
            <span style="float:right;margin-right: 10px;"><fmt:formatDate value="${board.rdate}" pattern="yyyy-MM-dd a HH:mm:ss"/></span>
        </div>
        <div class="card-body">
            <!--작성자, 조회수-->
            <div>
                <span style="font-family: 'OTWelcomeBA';font-size:18px;">작성자 : ${board.name}</span>
                <span style="float:right;font-family: 'LeferiPoint-WhiteObliqueA';color:black;font-weight:bold;">조회수 : ${ board.viewnum }</span>
            </div>
            <!--내용-->
            <div>
                ${board.content}  
            </div>
        </div>

        <c:if test="${member.email==board.email}">
            <button class="button_1" style="display: inline-block; margin: 0 5px;  float:right; width:100px; " onclick="if(confirm('정말로 삭제하시겠습니까?')){ location.href = '/board/delete.do?seq=${board.seq}'};">삭제
            <button class="button_1" style="display: inline-block; margin: 0 5px;  float:right; width:100px;" onclick = "location.href = '/board/update.do?seq=${board.seq}'">수정</button>
        </c:if>
        <div>
         	<%@ include file="/WEB-INF/views/board/comment_write.jsp" %>
            <%@ include file="/WEB-INF/views/board/comment.jsp" %>
        </div>
        <div>
            <ul id="dyn_ul" class="pagination" style="justify-content: center;">
              </ul>
        </div>
        <br/><br/>
        <button class="button_1" style="display: inline-block; margin: 0 5px;  float:right; width:100px; margin-top: 20px;" onclick = "location.href = '/board/list'">목록
        </button>
    </div>
    
    <br/><br/><br/><br/>
    <!-- 미들 끝 -->
    <%@ include file="/WEB-INF/views/menubar/footermenubar.jsp" %>
</body>
</html>
