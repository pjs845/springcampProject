<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="ko">
{% load static %}
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>캠핑구</title>
<link rel="stylesheet" href="{% static 'css/paginate.css' %}">
<link rel="stylesheet" href="{% static 'css/ligne.css' %}">
<script src="{% static 'js/paginate.js' %}"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/ui/dist/fancybox.css"/>

</head>
<body id="find-body">
    {% include "topmenubar.html" %}   
    <!-- 미들 -->
    <div class="container">
        <div>
            <h1 class="searching-title"> <i class="bi bi-caret-right-fill"></i> {{ca_na}} <i class="bi bi-caret-left-fill"></i> 검색 결과</h1>
        </div>
        {% if page_obj.paginator.count == 0 %}
        <script language="javascript">
            alert("검색결과가 없습니다 다시 검색해 주세요.");
            location.href="../"
        </script>
        {% else %}
        <h4 class="searching-title2">검색 결과 개수: <strong>{{page_obj.paginator.count}}</strong></h4>
        {% endif %}
        <div class="panel">
            <div class="cbody">
                <div class="input-group">
                    <label for="searchBox">필터검색 &nbsp</label>
                    <input type="search" id="searchBox" placeholder="Filtrar...">
                </div>
            </div>
        </div>
        <table class="myTable table hover">
            <tbody>
            <tr>
                <th>View</th>
                <th>Camp Name</th>
                <th>Address</th>
            </tr>
            {% for x in page_obj %}
            <tr>
                <td><a href="{{x.id}}"><img class="imge" src="{{x.img}}" alt="{{x.na}}"></a></td>
                <td class="tit"><a href="{{x.id}}"><i class="bi bi-box-arrow-in-down-right"></i>{{x.na}}</a></td>
                <td><nav class="addr"><i class="bi bi-geo-alt"></i></i> {{x.addr}}</nav></td>
            </tr>
            {% endfor %}
            </tbody>
        </table>
    </div>
    <script>
    
        let options = {
            numberPerPage:10, // 한 페이지당 나올 페이지 수
            goBar:true, 
            pageCounter:true, 
        };
    
        let filterOptions = {
            el:'#searchBox' 
        };
    
        paginate.init('.myTable',options,filterOptions);
    </script>
    <br/><br/><br/><br/>
                
    <!-- 미들 끝 -->
    {% include "footermenubar.html" %}
</body>
</html>