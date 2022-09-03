<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE HTML>
<!-- 자바스크립트 차단된 콘텐츠 자동 허용 실시 -->
<!-- saved from url=(0013)about:internet -->

<!-- 표시 언어 지정 -->
<html lang="ko">

<!-- 헤더 정의 부분 -->
<head>
    <title>HTML TEST</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">  

    <!-- Jquery CDN 로드 : 항상 최신 버전 사용 -->    
    <script src="https://code.jquery.com/jquery-latest.min.js"></script> 
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

    <!-- 부트스트랩 CDN 로드 : 항상 최신 버전 사용 : maxcdn -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>


    <!-- 부트스트랩 CDN 로드 : 항상 최신 버전 사용 : netdna -->
    <!-- <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css"> -->
    <!-- <script src="https://netdna.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script> -->

	<!-- map.js 함수 호출용 -->
	
    <script>
        
    </script>

    <!-- 내부 CSS 스타일 지정 -->
    <style>			    			 	    	
		@font-face {
			font-family: 'Pretendard-Regular';
			src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
			font-weight: 400;
			font-style: normal;
		}
		/* [html, body 영역 스타일 지정] */
		html, body{
			width : 100%;
			height : 100%;
			margin : 0;
			padding : 0;
			border : none;	
			overflow : auto;				
		}		
		
		/* [body 스크롤바 메인 스타일 지정] */
		body::-webkit-scrollbar {
			width: 10px;
			background-color: #c1c1c1;
		}
		/* body 스크롤바 thumb 스타일 지정 */
		body::-webkit-scrollbar-thumb {		
			background-color: #444444;
		}
        .tt{
            width        : 280px;     /* 너비는 변경될수 있습니다. */
            text-overflow: ellipsis;  /* 위에 설정한 100px 보다 길면 말줄임표처럼 표시합니다. */
            white-space  : nowrap;    /* 줄바꿈을 하지 않습니다. */
            overflow     : hidden;    /* 내용이 길면 감춤니다 */
            display      : block;     /* ie6이상 현재요소를 블럭처리합니다. */
          }
        .mcont{
            width        : 280px;     /* 너비는 변경될수 있습니다. */
            text-overflow: ellipsis;  /* 위에 설정한 100px 보다 길면 말줄임표처럼 표시합니다. */
            white-space  : nowrap;    /* 줄바꿈을 하지 않습니다. */
            overflow     : hidden;    /* 내용이 길면 감춤니다 */
            display      : block;     /* ie6이상 현재요소를 블럭처리합니다. */
        }
		.camp_tt{
			font-family: 'Pretendard-Regular';
			color:black;
			font-size:20px;
		}
		#address{
			font-size:14px;
			color:#5d5de3;
			padding:0px;
		}	           
		#camp_location{
			list-style:none;
		}               
    </style>



    <!-- 내부 JS 지정 -->
    <script type="text/javascript"> 	
    	/* [html 최초 로드 및 이벤트 상시 대기 실시] */
    	window.onload = function() {
    		console.log("");
    		console.log("[window onload] : [start]");
    		console.log(""); 

    		// 동적으로 테이블 tbody tr 행 생성 실시
    		tableInsert();
    	};


		

    	/* [테이블 리스트 전역 변수 선언 실시] */
    	const tableList = []; // tableInsert 함수에서 for문을 돌면서 삽입 실시
    	const pageList = 10; // 한개의 페이지에 보여질 목록 개수
    	const pageMax = 5; // 최대 생성될 페이지 개수 (페이지를 더보려면 이전, 다음 버튼 클릭해야함)    	
    	var idx = 0; //idx 값 확인 후 동적 페이지 전환 및 데이터 표시
    	var page = 1; //생성 시작할 페이지 번호

        /*const table = [{"id":"1", "writer":"관리자", "subject":"제목1", "content":"안녕하세요", "rdate":"2022.08.04"},
        {"id":"2", "writer":"관리자", "subject":"제목2", "content":"안녕하세요", "rdate":"2022.08.05"},
        {"id":"3", "writer":"관리자", "subject":"제목3", "content":"안녕하세요", "rdate":"2022.08.06"},
        {"id":"4", "writer":"관리자", "subject":"제목4", "content":"안녕하세요", "rdate":"2022.08.07"},
        {"id":"5", "writer":"관리자", "subject":"제목5", "content":"안녕하세요", "rdate":"2022.08.08"},
        {"id":"6", "writer":"관리자", "subject":"제목6", "content":"안녕하세요", "rdate":"2022.08.09"},
        {"id":"7", "writer":"관리자", "subject":"제목7", "content":"안녕하세요", "rdate":"2022.08.10"}]*/
		
        function searchCamp() { 
    		var camps;
	    	$.ajax({
				url: "/ajax/searchCamp.json", 
				type: "GET",  
				async: false,
				success: function(data){
					//var jsObj = JSON.parse(data);  //json -> jsObj : jQuery버젼이 낮을 때만 
					//var json = JSON.stringify(jsObj); //jsObj -> json 
					if(!data){
						alert("존재하지않는 SEQ");
						return false;
					}
					camps = data;
				}
			});
	    	return camps;
    	}
    	const camps = searchCamp();
        
        
    	/* [tbody tr 동적 삽입 이벤트 수행 함수] */    	
    	function tableInsert(){
    		console.log("");
    		console.log("[tableInsert] : [start]"); 
    		console.log("");


    		// [ajax 통신 >> tableList 테이블 데이터가 리스트에 포함된 경우]
    		// pageInsert(page);

    		
    		// [for 반복문을 돌려서 tr 데이터 임의로 생성 실시]
    		for (const camp of camps){
    			// JSON 형식으로 리스트에 추가 실시
    			var jsonObject = {"id":camp.id,"name":camp.name, "addr":camp.addr, "img":camp.img};
                //var jsonObject = {"name":String(key)};
    			tableList.push(jsonObject);
    		}
            console.log("tablelist:" + tableList.length);
            console.log("jsonObject:" + jsonObject);
    		// [테이블 행 개수에따라 페이징 처리 실시]
    		pageInsert(page);
    	};
		function sido(search, num){
            // [ajax 통신 >> tableList 테이블 데이터가 리스트에 포함된 경우]
            // pageInsert(page);
			tableList.length = 0;
			for (const camp of camps){
    			// JSON 형식으로 리스트에 추가 실시
    			var jsonObject = {"name":String(camp["name"]), "addr":String(camp["addr"])};
    			tableList.push(jsonObject);
    		}

			var selected = []
			console.log("select.value: " + $('#cate1').val());
			if ($('#cate1').val()==="전국"){
				for (const loc of tableList){
					if(loc.addr.includes("") && loc.name.includes($('#address').val())){
						selected.push(loc);
					}
				}
			}else{
				for (const loc of tableList){
					if(loc.addr.includes($('#cate1').val()) && loc.name.includes($('#address').val())){
						selected.push(loc);
					}
				}
			}
			tableList.length = 0;
			for (const loc of selected){
				tableList.push(loc);
			}
            // [테이블 행 개수에따라 페이징 처리 실시]
            pageInsert(1);
        };

    	/* [페이징 처리 이벤트 수행 함수] */
    	function pageInsert(value){
    		console.log("");
    		console.log("[pageInsert] : [start] : " + value); 
    		console.log("");

    		// [페이징 목록 초기화 실시]
    		$("#dyn_ul").empty();


    		// [생성된 테이블 tr 개수 확인 >> 페이징 처리 5개씩 목록 자름]    		
    		var startIndex = value; // 생성 시작 페이지    		
    		//var endIndex = $("#dyn_tbody tr").length; // tbody에 동적으로 추가된 tr 개수 확인
    		var endIndex = tableList.length; // 배열에 있는 길이 확인

    		// [tr 개수에 따라 페이징 해야할 개수 확인]
    		var pageCount = 0;
    		var pagePlus = 0;
    		if(endIndex > pageList){ // tr 행 개수가 5 이상인 경우 (임의로 설정)
    			pageCount = Math.floor(endIndex / pageList); //생성될 페이지 수 (소수점 버림)
    			pagePlus = endIndex % pageList; //추가 나머지 자식 수
    			if(pagePlus > 0){ //추가 자식수가 있는경우 >> 페이지 추가
    				pageCount = pageCount + 1;
    			}
    			console.log("");
	    		console.log("[pageInsert] : [pageCount] : " + pageCount); 
	    		console.log("[pageInsert] : [pagePlus] : " + pagePlus); 
	    		console.log("");
    		}


    		// [생성될 페이지 번호가 전체 생성되야하는 길이보다 크거나 작은지 확인]
    		if(startIndex > pageCount){ //길이 초과 시 기존꺼로 다시 저장
    			startIndex = page;
    		}
    		else if(startIndex < 0){ //길이 미만 시 기존꺼로 다시 저장
    			startIndex = page;
    		}
    		else {
    			page = startIndex;
    		}


    		// [동적 ul 페이징 처리 실시]
    		if(pageCount == 1){ //생성해야할 페이지가 1페이지인 경우
    			var insertUl = "<li class='page-item'>"; // 변수 선언
    			insertUl += insertUl + "<a class='page-link' href='javascript:void(0)' onclick = 'newPage(1);'>";
    			insertUl += insertUl + i;
    			insertUl += insertUl + "</a></li>";
    			$("#dyn_ul").append(insertUl); //jquery append 사용해 동적으로 추가 실시      			
    		}
    		else if(pageCount >= 2){ //생성해야할 페이지가 2페이지 이상인 경우
    			// 이전 페이지 추가 실시 
    			var insertSTR = "<li class='page-item'>"; // 변수 선언
    			insertSTR = insertSTR + "<a class='page-link' href='javascript:void(0)' onclick = 'newPage("+"-1"+");'>";
    			insertSTR = insertSTR + "Previous";
    			insertSTR = insertSTR + "</a></li>";
    			$("#dyn_ul").append(insertSTR); //jquery append 사용해 동적으로 추가 실시      			

    			// 특정 1, 2, 3 .. 페이지 추가 실시
    			var count = 1;
    			for(var i=startIndex; i<=pageCount; i++){
    				if(count > pageMax){ //최대로 생성될 페이지 개수가 된 경우 
    					page = i - pageMax; //생성된 페이지 초기값 저장 (초기 i값 4 탈출 인경우 >> 1값 저장)
    					break; //for 반복문 탈출
    				}
                    if (i==startIndex){
                        var insertUl = "<li class='page-item disabled'>"; // 변수 선언
                    }else{
                        var insertUl = "<li class='page-item'>"; // 변수 선언
                    }
    				insertUl = insertUl + "<a class='page-link' href='javascript:void(0)' onclick = 'select("+i+");'>";
	    			insertUl = insertUl + String(i);
	    			insertUl = insertUl + "</a></li>";
    				$("#dyn_ul").append(insertUl); //jquery append 사용해 동적으로 추가 실시  
    				count ++;
                    
    			}
    			// 다음 페이지 추가 실시
    			var insertEND = "<li class='page-item'>"; // 변수 선언
    			insertEND = insertEND + "<a class='page-link' href='javascript:void(0)' onclick = 'newPage("+"0"+");'>";
    			insertEND = insertEND + "Next";
    			insertEND = insertEND + "</a></li>";
    			$("#dyn_ul").append(insertEND); //jquery append 사용해 동적으로 추가 실시
    		}


    		// [페이징 완료 후 >> tr 개수 전체 삭제 >> 페이징 개수에 맞게 다시 표시 실시]
    		$("#dyn_tbody").empty(); //tbody tr 전체 삭제 실시


    		// [새롭게 페이지 목록 리스트 처리 실시]
    		newPage(startIndex, pageCount);
    	};

        function select(current){
    		// [페이징 목록 초기화 실시]
    		$("#dyn_ul").empty();

    		// [생성된 테이블 tr 개수 확인 >> 페이징 처리 5개씩 목록 자름]    		
    		var currentpg = current; // 현재 페이지    		
    		//var endIndex = $("#dyn_tbody tr").length; // tbody에 동적으로 추가된 tr 개수 확인
    		var endIndex = tableList.length; // 배열에 있는 길이 확인

    		// [tr 개수에 따라 페이징 해야할 개수 확인]
    		var pageCount = 0;
    		var pagePlus = 0;
    		if(endIndex > pageList){ // tr 행 개수가 5 이상인 경우 (임의로 설정)
    			pageCount = Math.floor(endIndex / pageList); //생성될 페이지 수 (소수점 버림)
    			pagePlus = endIndex % pageList; //추가 나머지 자식 수
    			if(pagePlus > 0){ //추가 자식수가 있는경우 >> 페이지 추가
    				pageCount = pageCount + 1;
    			}
    		}

    		// [동적 ul 페이징 처리 실시]
            if(pageCount == 1){ //생성해야할 페이지가 1페이지인 경우
    			var insertUl = "<li class='page-item'>"; // 변수 선언
    			insertUl += insertUl + "<a class='page-link' href='javascript:void(0)' onclick = 'newPage(1);'>";
    			insertUl += insertUl + i;
    			insertUl += insertUl + "</a></li>";
    			$("#dyn_ul").append(insertUl); //jquery append 사용해 동적으로 추가 실시      			
    		}
    		if(pageCount >= 2){ //생성해야할 페이지가 2페이지 이상인 경우
    			// 이전 페이지 추가 실시 
    			var insertSTR = "<li class='page-item'>"; // 변수 선언
    			insertSTR = insertSTR + "<a class='page-link' href='javascript:void(0)' onclick = 'newPage("+"-1"+");'>";
    			insertSTR = insertSTR + "Previous";
    			insertSTR = insertSTR + "</a></li>";
    			$("#dyn_ul").append(insertSTR); //jquery append 사용해 동적으로 추가 실시      			

    			// 특정 1, 2, 3 .. 페이지 추가 실시
    			var count = 1;
    			for(var i=page; i<=pageCount; i++){
    				if(count > pageMax){ //최대로 생성될 페이지 개수가 된 경우 
    					page = i - pageMax; //생성된 페이지 초기값 저장 (초기 i값 4 탈출 인경우 >> 1값 저장)
    					break; //for 반복문 탈출
    				}
                    if (i==currentpg){
                        var insertUl = "<li class='page-item disabled'>"; // 변수 선언
                    }else{
                        var insertUl = "<li class='page-item'>"; // 변수 선언
                    }
    				insertUl = insertUl + "<a class='page-link' href='javascript:void(0)' onclick = 'select("+i+");'>";
	    			insertUl = insertUl + String(i);
	    			insertUl = insertUl + "</a></li>";
    				$("#dyn_ul").append(insertUl); //jquery append 사용해 동적으로 추가 실시  
    				count ++;
                    
    			}
    			// 다음 페이지 추가 실시
    			var insertEND = "<li class='page-item'>"; // 변수 선언
    			insertEND = insertEND + "<a class='page-link' href='javascript:void(0)' onclick = 'newPage("+"0"+");'>";
    			insertEND = insertEND + "Next";
    			insertEND = insertEND + "</a></li>";
    			$("#dyn_ul").append(insertEND); //jquery append 사용해 동적으로 추가 실시
				$('#scrollbox').animate({scrollTop:0},0);
    		}


    		// [페이징 완료 후 >> tr 개수 전체 삭제 >> 페이징 개수에 맞게 다시 표시 실시]
    		$("#map_tbody").empty(); //tbody tr 전체 삭제 실시

    		// [새롭게 페이지 목록 리스트 처리 실시]
    		newPage(currentpg, pageCount);
    	};
    	/* [tbody tr 동적 삽입 이벤트 수행 함수] */    	
    	function newPage(pageCurrent, pgcount){
    		// [pageCurrent [-1] >> 이전 / pageCurrent [1 이상] >> 일반 / pageCurrent [0] >> 다음]
    		console.log("");
    		console.log("[newPage] : [start]"); 
    		console.log("[newPage] : [page] : " + pageCurrent); 
    		console.log("");

    		// [새롭게 테이블 tbody tr 데이터 생성 실시]
    		if(pageCurrent == -1){ // 이전 페이지
    			$("#map_tbody").empty(); //tbody tr 전체 삭제 실시

    			// [새롭게 페이징 처리 실시]
    			var newIdx = page - pageMax;
    			// [테이블 데이터에 따라 페이징 처리 실시]
    			pageInsert(newIdx); //표시될 페이지 번호 전송
    		} 
    		else if(pageCurrent == 0){ // 다음 페이지
    			$("#map_tbody").empty(); //tbody tr 전체 삭제 실시

    			// [새롭게 페이징 처리 실시]
    			var newIdx = page + pageMax;

    			// [테이블 데이터에 따라 페이징 처리 실시]
    			pageInsert(newIdx); //표시될 페이지 번호 전송
    		}
    		else { // 일반 테이블 목록 리스트 갱신
    			$("#map_tbody").empty(); //tbody tr 전체 삭제 실시

    			// 저장된 idx 에서 페이지 수를 곱해서 새로운 idx 지정
    			// [1페이지 클릭 >> (1*5) -5 = 0 시작]
    			// [2페이지 클릭 >> (2*5) -5 = 5 시작]
    			idx = (pageCurrent * pageList) - pageList;
    			var checkCount = 1;
				$("#map").empty();
				var map = selectMapList(8, 37.3595704, 127.105399);
    			for(var i=idx; i<tableList.length; i++){ //반복문을 수행하면서 tbody에 tr데이터 삽입 실시
    				if(checkCount > pageList){ //한페이지에 표시될 목록을 초과한 경우
                        $("#pg_wrap").empty();	
                        var insertPg = "";
                        insertPg += "<div class='page_nation'>";
                        insertPg += "<a class='arrow prev' href='#'></a>";
                        insertPg += "<div class='fl pagestat'><span id='nowpage' class='b blue'>"+pageCurrent+"</span> / <span id='totalpage'>"+pgcount+"</span></div>";
                        insertPg += "<a class='arrow next' href='#''></a>";
                        insertPg += "</div>";
                        $("#pg_wrap").append(insertPg);	
						$("#total_cnt").empty();
						var insert_tot = "";
						insert_tot += tableList.length
						$("#total_cnt").append(insert_tot);
    					return;
    				}
    				// json 데이터 파싱 실시
    				var jsonObject = JSON.parse(JSON.stringify(tableList[i])); //각 배열에 있는 jsonObject 참조
    				var name = jsonObject.name;
    				var addr = jsonObject.addr;
					// 지도 마커 내용
					var infoWindow = new naver.maps.InfoWindow({
						content: '<div style="width:200px;text-align:center;padding:10px;"><b>' + name + '</b><br> - '+addr+' - </div>'
					});
					var markerinfo = [addr, name];
    				// 동적으로 리스트 추가
    				var insertTr = ""; // 변수 선언
                    //insertTr += "<li id='camp_location"+i+"'>"; 
					insertTr += "<li id='camp_location' onclick=\"searchAddressToCoordinate(\'"+markerinfo+"\')\">"; 
					//$("#camp_location"+i).click({address: addr, infowindows: infoWindow}, searchAddressToCoordinate);
    				insertTr += "<div>"; 
    				insertTr += "<h2 class='camp_tt'>"+name+"</h2>";
    				insertTr += "<ul class='camp_info'>";
    				insertTr += "<li class='addr' id='address'>"+addr+"</li>";
					insertTr += "</ul>";
                    insertTr += "</div>";
                    insertTr += "</li>";
    				insertTr += "<hr size='2' color='gray' noshade>";             
    				// jquery append 사용해 동적으로 추가 실시
                    console.log("addr:" + addr);
    				$("#map_tbody").append(insertTr);
					// 지도 마커 표시
					searchAddressToMarker(String(addr), map, infoWindow);
    				// 카운트 횟수 증가 		
    				checkCount ++;
    			}					
    		}
			$('#scrollbox').animate({scrollTop:0},0);	
			
    	};

		//검색한 주소의 정보를 insertAddress 함수로 넘겨준다.
		function searchAddressToCoordinate(markerinfo) {
			markerinfo = markerinfo.split(",");
			console.log("markerinfo[0]: " + markerinfo[0]);
			naver.maps.Service.geocode({
				query: markerinfo[0]
			}, function(status, response) {
				if (status === naver.maps.Service.Status.ERROR) {
					return alert('Something Wrong!');
				}
				if (response.v2.meta.totalCount === 0) {
					return alert('주소가 이상함');
				}
				var htmlAddresses = [],
					item = response.v2.addresses[0],
					point = new naver.maps.Point(item.x, item.y);
				if (item.roadAddress) {
					htmlAddresses.push('[도로명 주소] ' + item.roadAddress);
				}
				if (item.jibunAddress) {
					htmlAddresses.push('[지번 주소] ' + item.jibunAddress);
				}
				if (item.englishAddress) {
					htmlAddresses.push('[영문명 주소] ' + item.englishAddress);
				}

				//insertAddress(item.roadAddress, item.x, item.y);
				console.log("markerinfo[1]: " + markerinfo[1]);
				makeMap(item.x, item.y,markerinfo[0], markerinfo[1]);
			});
		}

		function searchAddressToMarker(address, map, infowindows) {
			naver.maps.Service.geocode({
				query: address
			}, function(status, response) {
				if (status === naver.maps.Service.Status.ERROR) {
					return alert('Something Wrong!');
				}
				if (response.v2.meta.totalCount === 0) {
					return;
				}
				var htmlAddresses = [],
					item = response.v2.addresses[0],
					point = new naver.maps.Point(item.x, item.y);
				if (item.roadAddress) {
					htmlAddresses.push('[도로명 주소] ' + item.roadAddress);
				}
				if (item.jibunAddress) {
					htmlAddresses.push('[지번 주소] ' + item.jibunAddress);
				}
				if (item.englishAddress) {
					htmlAddresses.push('[영문명 주소] ' + item.englishAddress);
				}
				insertMarker(map, item.x, item.y, infowindows);
			});
		}

		// 주소 검색의 이벤트

		$('#address').on('keydown', function(e) {
			var keyCode = e.which;
			if (keyCode === 13) { // Enter Key
				sido($('#address').val(), -1);
			}
		});
		$('#submit').on('click', function(e) {
			e.preventDefault();
			sido($('#address').val(), -1);
		});
		function getClickHandler(map, markers, infoWindows) {
		
            return function(e) {  // 마커를 클릭하는 부분
                var marker = markers, // 클릭한 마커의 시퀀스로 찾는다.
                    infoWindow = infoWindows; // 클릭한 마커의 시퀀스로 찾는다

                if (infoWindow.getMap()) {
                    infoWindow.close();
                } else {
                    infoWindow.open(map, marker); // 표출
                }
    		}
    	}

		function insertMarker(map, latitude, longitude, infoWindows){
			var marker = new naver.maps.Marker({
				map: map,
				position: new naver.maps.LatLng(longitude, latitude),
				
			});
			naver.maps.Event.addListener(marker, 'click', getClickHandler(map, marker, infoWindows));
		}
			
		//검색정보를 테이블로 작성해주고, 지도에 마커를 찍어준다.
		function insertAddress(latitude, longitude) {	
			var map = new naver.maps.Map('map', {
				center: new naver.maps.LatLng(longitude, latitude),
				zoom: 14
			});
			var marker = new naver.maps.Marker({
				map: map,
				position: new naver.maps.LatLng(longitude, latitude),
			});
		}

		//지도를 그려주는 함수
		function selectMapList(z, len, lat) {
			var map = new naver.maps.Map('map', {
				center: new naver.maps.LatLng(len, lat),
				zoom: z,
				zoomControl: true,
				zoomControlOptions: { //줌 컨트롤의 옵션
					position: naver.maps.Position.TOP_RIGHT
				}
			});
			map.setOptions("tileTransition", false);
			return map;
		}
		//지도 초기화
		function makeMap(latitude, longitude, addr, name) {
			$("#map").empty();
			var map = new naver.maps.Map('map', {
				center: new naver.maps.LatLng(longitude, latitude),
				zoom: 14
			});
			var marker = new naver.maps.Marker({
				map: map,
				position: new naver.maps.LatLng(longitude, latitude),
			});
			var infoWindow = new naver.maps.InfoWindow({
				content: '<div style="width:200px;text-align:center;padding:10px;"><b>' + name + '</b><br> - '+addr+' - </div>'
			});
			insertMarker(map, latitude, longitude, infoWindow);
			console.log("end");
		}


		// 지도를 이동하게 해주는 함수
		function moveMap(len, lat, map) {
			var mapOptions = {
					center: new naver.maps.LatLng(len, lat),
					zoom: 15,
					mapTypeControl: true
				};
			var map = new naver.maps.Map('map', mapOptions);
			var marker = new naver.maps.Marker({
				position: new naver.maps.LatLng(len, lat),
				map: map
			});
		}
    </script>
</head>
<body>
	<!-- 테이블 속성 정의 -->
        <tbody id="map_tbody" >
        </tbody>  
</body>

</html>