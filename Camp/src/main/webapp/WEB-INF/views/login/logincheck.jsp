<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${member.email==null}">
    <script language="javascript">
        alert("로그인해주세요");
        location.href="/board";
        history.back();
    </script>
</c:if>
