<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
{% load static %}
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Paginatejs | Ligne</title>
    <link rel="stylesheet" href="{% static 'css/paginate.css' %}">
    <link rel="stylesheet" href="{% static 'css/ligne.css' %}">
    {% comment %} <script type="text/javascript" src="js/paginate.js"></script> {% endcomment %}
    <script src="{% static 'js/paginate.js' %}"></script> 
    <link rel="stylesheet" href="{% static 'css/style.css' %}">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <style>
        *{
            font-family: sans-serif;
        }
    </style>
</head>
<body>
<div class="container">
    <div>
        <h1> <i class="bi bi-caret-right-fill"></i> {{ca_na}} <i class="bi bi-caret-left-fill"></i> 검색 결과입니다</h1>
    </div>
    <h4>검색 결과 개수: {{page_obj.paginator.count}}</h4>
    <div class="panel">
        <div class="body">
            <div class="input-group">
                <label for="searchBox">필터검색 &nbsp</label>
                <input type="search" id="searchBox" placeholder="Filtrar...">
            </div>
        </div>
    </div>
    <table class="myTable table hover">
        <tbody>
        <tr>
            <th>사진</th>
            <th>캠핑장 이름</th>
            <th>주소</th>
        </tr>
        {% for x in page_obj %}
        <tr>
            <td><img class="imge" src="{{x.img}}" alt="{{x.na}}"></td>
            <td class="tit"><a href="#"><i class="bi bi-box-arrow-in-down-right"></i>{{x.na}}</a></td>
            <td><nav class="addr"><i class="bi bi-geo-alt"></i></i> {{x.addr}}</nav></td>
        </tr>
        {% endfor %}
        </tbody>
    </table>
</div>
<script>

    let options = {
        numberPerPage:10, //Cantidad de datos por pagina
        goBar:true, //Barra donde puedes digitar el numero de la pagina al que quiere ir
        pageCounter:true, //Contador de paginas, en cual estas, de cuantas paginas
    };

    let filterOptions = {
        el:'#searchBox' //Caja de texto para filtrar, puede ser una clase o un ID
    };

    paginate.init('.myTable',options,filterOptions);
</script>
</body>
</html>