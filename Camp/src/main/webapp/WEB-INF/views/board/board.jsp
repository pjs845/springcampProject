<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>캠핑구</title>
<link rel="stylesheet" href="/css/style.css">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"  integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script type="text/javascript" language="javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<link rel="stylesheet" href="/css/notice_style.css">

<script>
		$(function(){
			$("#catgo").val("${catgo}").prop("selected",true);
			$("#keyword").attr('value',"${keyword}");
			console.log("${keyword}".length);
			
		});
</script>
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
    <section class="board">
        <!-- board list area -->
          <div id="board-list">
              <div class="container">
                  <table class="board-table">
                      <thead>
                      <tr>
                          <th scope="col" class="th-num">번호</th>
                          <th scope="col" class="th-title">제목</th>
                          <th scope="col" class="th-writer">작성자</th>
                          <th scope="col" class="th-date">등록일</th>
                          <th scope="col" class="th-date">조회수</th>
                      </tr>
                      </thead>
                      <tbody>
                      <%@ include file="/WEB-INF/views/board/board_paging.jsp" %> 
                      </tbody>
                      <div class="search-window" style="float:right;">
                        <div class="search" style="width:400px;">
                            <form class="form-inline my-2 my-lg-0" action="/board/search/list.do" method="post">
                                
                                  <div class="search-wraps">
                                    <select id="catgo" name="catgo" class="searchSelect">
                                        <option value="all" selected="" id="00">제목+내용</option>
                                                                <option value="title" id="01">
                                            제목						</option>
                                                                <option value="content" id="02">
                                            내용						</option>
                                                                <option value="name" id="03">
                                            작성자						</option>
                                                                <option value="comment" id="04">
                                            댓글						</option>
                                            </select>
                                      <label for="search" class="blind">공지사항 내용 검색</label>
                                      <input id="keyword" type="text" name="keyword" type="search" style="border-radius: 5px;" placeholder="검색어를 입력해주세요." aria-label="Search" value="${keyword}">
                                      <button class="btn btn-dark" type="submit">검색</button>
                                  </div>
                              </form>
                              <br/>
                        </div>
                      </div>
                  </table>
                  <nav aria-label="Page navigation example">		
                    <ul id="dyn_ul" class="pagination" style="justify-content: center;">
                    </ul>
                  </nav>
              </div>
          </div>
          <br/>
          <div align="center">				
            <button type="button" style="font-family:'Pretendard-Regular';background-color:#a8d0f5;color:black;font-weight:bold;border-color:#7cb2c3;" class="btn btn-sm btn-primary" id="btnSave" onclick = "location.href = '/board/write'">글쓰기</button>						
        </div>
    <br/><br/><br/><br/>
      </section>          
    <!-- 미들 끝 -->
    <%@ include file="/WEB-INF/views/menubar/footermenubar.jsp" %>
</body>
</html>