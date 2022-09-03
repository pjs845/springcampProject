<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/login/logincheck.jsp" %>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>캠핑구 글쓰기</title>
<link rel="stylesheet" href="/css/style.css">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js" ></script>

<style>
    .summernote_out{
        text-align: center;
    }
    .note-editor, .note-frame, .panel, .panel-default{
        display: inline-block;
        text-align: left;
    }
</style>

<script>
    $(document).ready(function() {
        $('#summernote').summernote({
            height: 300,                   // set editor height
            width: 900,                    // set editor width
            minHeight: null,             // set minimum height of editor
            maxHeight: null,             // set maximum height of editor
            focus: true,                  // set focus to editable area after initializing summernote
            lang: "ko-KR",
            // 추가한 글꼴
            fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
            // 추가한 폰트사이즈
            fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],
		    focus : true,
			callbacks : {
				onImageUpload : function(files, editor, welEditable) {       
					for (var i = 0; i < files.length; i++) {
						sendFile(files[i], this);
					}
				}
			}
        });
    });
    
    function sendFile(file, el) {
		var form_data = new FormData();
		form_data.append('file', file);
		$.ajax({                                                             
			data : form_data,
			type : "POST",
			url : '/image/upload',
			cache : false,
			contentType : false,
			enctype : 'multipart/form-data',  
			processData : false,
			success : function(url) {                                        
				$(el).summernote('insertImage', url, function($image) {
					$image.css('width', "25%");
				});
			}
		});
	}
</script>

<script language="javascript">
    function writeCheck()
    {
        var form = document.writeform;
    
        if( !form.title.value )
        {
            alert( "제목을 적어주세요" );
            form.title.focus();
            return false;
        }
        if( !form.content.value )
        {
            alert( "내용을 적어주세요" );
            form.content.focus();
            return false;
        }
        form.submit();
    }
 </script>
</head>
<body>
    <%@ include file="/WEB-INF/views/menubar/topmenubar.jsp" %>
    <!-- 미들 -->       
   <body >
    <table class="table table-hover">
        <thead>
            <center class="board-middle">
            <div class="board-image"><img src="/img/np5.jpg" alt=""></div>
                <h1>글쓰기</h1>
                <font color='silver' size='4' face='hanna'>
            <hr width='1400' size='2' color='gray' noshade>           
            </center>
            <div class="summernote_out">
                <form name="writeform" id="form" role="form" method="post" action="write.do">	
                    <!-- {% csrf_token %} -->	
                    <input type="hidden" id="email" name="email" value="${member.email}">		
                    <table border="0" width="600" align="center" bordercolor="silver">
                        <tr>
                           <td width="30%" align="center"><label for="name" style="white-space:nowrap;">작성자</label></td>
                           <td><input id="name" name='name' class="form-control" readonly value="${member.name}"></td>
                        </tr>
                        <tr>
                           <td align="center"><label for="title" style="white-space:nowrap;">제목</label></td>
                           <td><input type="text" class="form-control" name="title" id="title"></td>
                        </tr>
                        <tr>
                            <td width="50" align="center"><label for="content" style="white-space:nowrap;">내용</label></td>
                           <td>
                            <div><textarea id="summernote" name="content"></textarea></div>
                        
                        <div align="center">				
                            <button type="button" class="btn btn-sm btn-primary" id="btnSave" OnClick="javascript:writeCheck();">올리기</button>				
                            <button type="button" class="btn btn-sm btn-primary" id="btnBoard" onclick = "location.href = '/board'">목록</button>			
                        </div>
                        </td>
                        </tr>

                     </table>											
                </form>			
        </thead>
    </table>
    <!-- 미들 끝 -->
    <%@ include file="/WEB-INF/views/menubar/footermenubar.jsp" %>
</body>
</html>