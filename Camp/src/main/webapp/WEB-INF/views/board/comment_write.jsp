<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<br><br>

<c:choose>

   <c:when test="${member.email!=null}"> <!-- {% if request.session.login_ok_user%} 로그인 세션이용해서 댓글작성 유무 확인--> 
      <form action="/board/comment_write?seq=${board.seq}" method="POST">
      		<input type="hidden" id="email" name="email" value="${member.email}">
      	    <input type="hidden" id="writer" name="writer" value="${member.name}">
    		<input id="comment" type="text" name="comment" placeholder="댓글을 입력해주세요" style="width:450px;border-radius:5px;margin-left: 5px;">
    		<input type="submit" value="등록" style="border-radius:5px;background-color:#b8dcff;border-color:#bcb1e3;">
		</form>
   </c:when>
   <c:otherwise>
      <form>
    	<input type="text" name="content" readonly value="댓글 작성은 회원만 가능합니다." style="width:450px;border-radius:5px;margin-left: 5px;">
    	<input type="submit" value="등록" style="border-radius:5px;background-color:#b8dcff;border-color:#bcb1e3;">
	</form>
   </c:otherwise>
</c:choose>
<hr>