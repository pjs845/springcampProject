<%@ page contentType="text/html; charset=UTF-8" %>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js">
    switch({{result}}){
        case 0:
            alert("로그인실패(회원 이메일이 존재하지 않음)");
            break;
        case 1:
            alert("로그인실패(비밀번호가 틀림)");
            break;
        case 2:
            alert("로그인성공");
    }
        location.href = "../../"
    </script> {% endcomment %}
</script>    





</script>