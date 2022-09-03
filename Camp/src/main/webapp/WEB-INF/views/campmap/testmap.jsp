<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title>집</title>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=k3y82rodr8"></script>
</head>
<body>
    <div id="map" style="width:100%;height:100vh;margin:0 auto;"></div>

<script>
var HOME_PATH = window.HOME_PATH || '.';


map = new naver.maps.Map('map', {
    center: new naver.maps.LatLng(36.31175, 127.3754709),
    zoom: 13
});


var hyeonjinHouse = new naver.maps.LatLng(36.30260, 127.33838);
var jooyeokHouse = new naver.maps.LatLng(36.32611, 127.41263);


var markers = [];
var infowindows = [];


markers.push(new naver.maps.Marker({
    map: map,
    position: hyeonjinHouse
}));

infowindows.push(new naver.maps.InfoWindow({
    content: [
        '<div class="iw_inner">',
        '   <h3>현진이네 집</h3>',
        '</div>'
    ].join('')
}));


markers.push(new naver.maps.Marker({
    map: map,
    position: jooyeokHouse
}));

infowindows.push(new naver.maps.InfoWindow({
    content: [
        '<div class="iw_inner">',
        '   <h3>주역이네 집</h3>',
        '</div>'
    ].join('')
}));

for(let i=0; i<markers.length; i++){
    naver.maps.Event.addListener(markers[i], "click", function(e) {
        if (infowindows[i].getMap()) {
            infowindows[i].close();
        } else {
            infowindows[i].open(map, markers[i]);
        }
    });
}

infowindows[0].open(map, markers[0]);
</script>
</body>
</html>