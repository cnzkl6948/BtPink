<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Location Send to Server</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	setInterval(function(){
		getLocation();
	}, 1000);
});


function getLocation(){
	var form = document.getElementById('send');
	if (navigator.geolocation) {
    
    // GeoLocation을 이용해서 접속 위치를 얻어옵니다

	navigator.geolocation.getCurrentPosition(function(position) {

			var lat = position.coords.latitude, // 위도
				lon = position.coords.longitude; // 경도
			$('#latt').val(lat);
			$('#lont').val(lon);
			$('#txt').val(lat+" : "+lon);
			form.submit();
			getMap();
		});

	} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
		alert('GeoLocation 사용불가 웹 브라우저');
	}
}

var mapContainer = mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
    center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 5 // 지도의 확대 레벨 
};
var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
    
var markers = [];


function getMap(){
	var lat = document.getElementById('latt');
	var lon = document.getElementById('lont');
	// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
	var locPosition = new daum.maps.LatLng(lat, lon); // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다

	// 마커와 인포윈도우를 표시합니다
	displayMarker(locPosition);
}
//배열에 추가된 마커들을 지도에 표시하거나 삭제하는 함수입니다
function setMarkers(map) {
    for (var i = 0; i < markers.length; i++) {
        markers[i].setMap(map);
    }            
}
// 지도에 마커와 인포윈도우를 표시하는 함수입니다
function displayMarker(locPosition) {
    setMarkers(null);

    // 마커를 생성합니다
    var marker = new daum.maps.Marker({  
//         map: map, 
        position: locPosition
    }); 
    marker.setMap(map);
    markers.push(marker);
    // 지도 중심좌표를 접속위치로 변경합니다
    map.setCenter(locPosition);      
}

</script>
</head>
<body>
<form id="send" action="locationSend" method="post">
	<input type="text" id="latt" name="latt" readonly="readonly">
	<input type="text" id="lont" name="lont" readonly="readonly">
</form>
<br>
<textarea id="txt" rows="50px" cols="100px"></textarea>
<br>
<div id="map" style="width:100%;height:500px;"></div>
</body>
</html>