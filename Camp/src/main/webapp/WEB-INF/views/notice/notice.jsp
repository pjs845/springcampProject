<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="ko">
{% load static %}
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<title>캠핑구 공지사항</title>
<link rel="stylesheet" href="{% static 'css/style.css' %}">
<!-- CSS only -->
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link rel="stylesheet" href="{% static 'css/notice_style.css' %}">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<body>
    {% include "topmenubar.html" %}   
    <!-- 미들 -->
    <div class="board-middle">
        <div class="board-image"><img src="/static/img/np4.jpg" alt=""></div>
        <div class="board-text">
            <p>공지사항</p>
        </div>
    </div>
    <section class="notice">
          <!-- board seach area -->
          <div id="board-search">
              <div class="container">
                  <div class="search-window">
                    <form class="form-inline my-2 my-lg-0" action="{% url 'search' %}" method="post">
                        {% csrf_token %}
                          <div class="search-wraps">
                              <label for="search" class="blind">공지사항 내용 검색</label>
                              <input id="search" type="search" style="border-radius: 5px;" placeholder="검색어를 입력해주세요." aria-label="Search" name="q" value="{{q}}">
                              <button class="btn btn-dark" type="submit">검색</button>
                          </div>
                      </form>
                      <br/>
                  </div>
              </div>
          </div>
         
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
                      </tr>
                      </thead>
                      <tbody>
                        {% if q %}
                        {% else %}
                        {% if notice_fixed %}
                        {% for notice in notice_fixed %}
                        <tr class="table-secondary text-center">
                            <td style="background-color: #f1fffa;"><label style="font-weight:bold; color:red;"><i class="bi bi-megaphone-fill"></i></label></td>
                            <td style="background-color: #f1fffa;"><a href='/notice/content/{{ notice.id }}'>{{ notice.subject|truncatechars:30 }}</a></td>
                            <td style="background-color: #f1fffa;">{{ notice.writer }}</td>
                            <td style="background-color: #f1fffa;">{{ notice.rdate|date:'Y년 m월 d일' }}</td>
                        </tr>
                        {% endfor %}
                        {% endif %}
                        {% endif %}
                      {% include "notice_paging.html" %}   
                      </tbody>
                  </table>
                  <br/><br/><br/>
                  <nav aria-label="Page navigation example">		
                    <ul id="dyn_ul" class="pagination" style="justify-content: center;">
                    </ul>
                  </nav>
                  <br/>
              </div>
          </div>
      
      </section>
                
    <!-- 미들 끝 -->
    {% include "footermenubar.html" %}
</body>
</html>