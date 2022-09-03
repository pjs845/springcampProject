<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
{% load static %}

<html>
    <head>
        <meta charset="utf-8">
        <title>
            박스모델
        </title>
        <style>a {
          color: black;
          text-decoration: none;
          background-color: transparent;
          }
        </style>
        <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/offcanvas-navbar/">
        <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
        <script src="{% static '/js/offcanvas.js'%}"></script>
        <script src="{% static '/js/subpage.js'%}"></script>
        <link rel="stylesheet" href="{% static '/css/offcanvas.css'%}">
        <link rel="stylesheet" href="{% static '/css/mainstyle.css'%}">
        <link rel="stylesheet" href="{% static '/css/subpage.css'%}">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
        <!-- 폰트   -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Mouse+Memoirs&family=Noto+Sans+KR&family=Oswald:wght@300&display=swap" rel="stylesheet">
        <!-- 댓글   -->
        <script src="{% static '/js/paginate.js'%}"></script>    
        <link rel="stylesheet" href="{% static '/css/ligne.css'%}">
        <link rel="stylesheet" href="{% static '/css/paginate.css'%}">
        <style>*{font-family: sans-serif;}</style>
        <!-- 아이콘 -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons"rel="stylesheet">
        
    </head>
    <body style="margin-top: 0px;">
        {% include "topmenubar.html" %}
        {% for x in x1 %}
        {% comment %} 전체 박스 {% endcomment %}
        <div class="box" style="padding-top: 30px;">
          {% comment %} 주소및 사진 {% endcomment %}
          <div class="imgall" style="
          height: 50px;
      ">
            <div class="campsite" style="
            width: 1010px;
            margin-right: 30px;
        ">
              <div class="grid text-left" >
                <div class="g-col-9">
                <div class="campname">{{x.캠프이름}}</div>
                
                </div>

              </div>  <!-- grid text-left 끝-->
            </div>
          </div>
        

          <div class="imgall">
            <div class="address" style="
            width: 1000px;
            height: 30px;
            margin-bottom: 6px;
            margin-right:30px;
        ">
        
              
                <div class="g-col-9">
                  <div class="addr">
                  <a href="#mapping" class="address" style="color:black;">{{x.주소}}</a>
                  </div>
                </div>

                
              
                <div style="margin-bottom: 30px;"></div> 
            </div>
          </div>
          
          {% comment %} 이미지 {% endcomment %}
            <div class="imgall" style="
            margin-right: 18px;
        ">
                <div class="imgbox">
                    <div class="box1"><img class = "imim" src="{{img}}" alt="My Image" ></div>
                    
                </div>
            </div>

            <div class="imgall">
              <div class="facility" style="
              width: 1050px;
              margin-bottom: 0px;
              "> 
              
              

            {% comment %} 상세정보 {% endcomment %}
            <div class="imgall" style="
            margin-top: 20px;
        ">
            <div class="content1" style="
            padding-right: 0px;
            width: 1050px;
            margin-bottom: 10px;
        ">
                <div class="my-3 p-3 rounded shadow-sm" style="
                width: 1022px;
            ">  
                    {% if animal is not none %}
                    <div class="d-flex text-muted pt-3"> 
                      <p class="pb-3 mb-0 small lh-sm ">
                        <strong class="d-block text-gray-dark" style="font-family: 'RIDIBatang';">반려동물</strong>
                        {{animal}}
                      </p>
                    </div>
                    {% endif %}
                    
                    {% if x.주소 is not none %}
                    <div class="d-flex text-muted pt-3"> 
                      <p class="pb-3 mb-0 small lh-sm ">
                        <strong class="d-block text-gray-dark" style="font-family: 'RIDIBatang';">주소</strong>
                        {{x.주소}}
                      </p>
                    </div>
                    {% endif %}

                    {% if x.문의처 is not none %}
                    <div class="d-flex text-muted pt-3">
                      <p class="pb-3 mb-0 small lh-sm ">
                        <strong class="d-block text-gray-dark" style="font-family: 'RIDIBatang';">문의처</strong>
                        {{x.문의처}}
                      </p>
                    </div>
                    {% endif %}
                    {% if x.캠핑장환경 is not none %}
                    <div class="d-flex text-muted pt-3">
                      <p class="pb-3 mb-0 small lh-sm ">
                        <strong class="d-block text-gray-dark" style="font-family: 'RIDIBatang';">캠핑장환경</strong>
                        {{x.캠핑장환경}}
                      </p>
                    </div>
                    {% endif %}
                    {% if x.캠핑장유형 is not none %}
                    <div class="d-flex text-muted pt-3">
                        <p class="pb-3 mb-0 small lh-sm ">
                            
                          <strong class="d-block text-gray-dark" style="font-family: 'RIDIBatang';">캠핑장유형</strong>
                          {{x.캠핑장유형}}
                        </p>
                      </div>
                      {% endif %}
                    
                      {% if x.운영기간 is not none %}
                      <div class="d-flex text-muted pt-3">
                        <p class="pb-3 mb-0 small lh-sm ">
                          <strong class="d-block text-gray-dark" style="font-family: 'RIDIBatang';">운영기간</strong>
                          {{x.운영기간}}
                        </p>
                      </div>
                      {% endif %}

                      {% if x.운영일 is not none %}
                      <div class="d-flex text-muted pt-3">
                        <p class="pb-3 mb-0 small lh-sm ">
                          <strong class="d-block text-gray-dark" style="font-family: 'RIDIBatang';">운영일</strong>
                          {{x.운영일}}
                        </p>
                      </div>
                      {% endif %}

                      {% if x.예약방법 is not none %}
                      <div class="d-flex text-muted pt-3">
                        <p class="pb-3 mb-0 small lh-sm ">
                          <strong class="d-block text-gray-dark" style="font-family: 'RIDIBatang';">예약방법</strong>
                          {{x.예약방법}}
                        </p>
                      </div>
                      {% endif %}

                    {% endfor %}
                    <small class="d-block text-end mt-3">
                    </small>
                  </div>
            </div>
            </div>

            {% comment %} 시설 {% endcomment %}
            <div class="imgall">
            <div class="facility" style="
            width: 1050px;
        ">      
              <div class="grid text-left" >
                
                {% if facil.facil1 is not none %}
                <div class="g-col-4">
                <hr width=97% align=left>
                <div class="facil"> 주변이용가능시설 </div>
                  {% for f1 in facil.facil1 %}
                  <div class="g-col-2" style="font-family: 'RIDIBatang';">
                    <i class="bi bi-cursor-fill" ></i> {{f1}}
                  </div>
                  {% endfor %}
                </div>
                
                {% endif %}
                
                
                {% if facil.facil2 is not none %}
                <div class="g-col-4">
                <hr width=97% align=left>
                <div class="facil"> 카라반내부시설 </div>
                  {% for f1 in facil.facil2 %}
                  <div class="g-col-2" style="font-family: 'RIDIBatang';">
                    <i class="bi bi-cursor-fill"></i> {{f1}}
                  </div>
                  {% endfor %}
                </div>
                
                {% endif %}
                
                {% if facil.facil3 is not none %}
                <div class="g-col-4">
                <hr width=97% align=left>
                <div class="facil"> 글램핑내부시설 </div>
                  {% for f1 in facil.facil3 %}
                  <div class="g-col-2" style="font-family: 'RIDIBatang';">
                    <i class="bi bi-cursor-fill"></i> {{f1}}
                  </div>
                  {% endfor %}
                </div>
                {% endif %}
              </div>  
            </div>
            </div>   
            <div id="mapping" class="map">{% include "map_sub.html" %}</div>
            
            <br>
            <br>
            <br>

            <hr width=97% align=left>
            <div class="notice">
              <div class="facil" style="
              margin-bottom: 0px;
          "> 건강 및 안전 </div>
                
                
                <br><h5 style="font-family: 'RIDIBatang';"><i class="bi bi-exclamation-circle-fill"></i>  코로나 19 방역수칙을 준수하셔야 합니다.</h5>
                {% if facil.소화기 is not none %}
                <br><h5 style="font-family: 'RIDIBatang';"><i class="bi bi-exclamation-circle-fill"></i>  소화기 있음</h5>
                {% else %}
                <br><h5 style="font-family: 'RIDIBatang';"><i class="bi bi-exclamation-circle-fill"></i>  소화기 없음</h5>
                {% endif %}
                {% if facil.화재경보기 is not none %}
                <br><h5 style="font-family: 'RIDIBatang';"><i class="bi bi-exclamation-circle-fill"></i>  화재경보기 설치여부 있음</h5>
                {% else %}
                <br><h5 style="font-family: 'RIDIBatang';"><i class="bi bi-exclamation-circle-fill"></i>  화재경보기 설치여부 없음</h5>
                {% endif %}
                
            </div>
        </div>
        </div>
        
        </div>
        
        <div class="g-col-12">{% include "footermenubar_sub.html" %}</div>
    </body>
    
</html>