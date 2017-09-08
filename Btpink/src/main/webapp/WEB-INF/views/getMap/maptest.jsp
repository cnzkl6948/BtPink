<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>geolocation으로 마커 표시하기</title>
    
</head>
<body>
<div id="map" style="width:100%;height:500px;"></div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d326cafe669ba603bdfe937ddd5722a8"></script>
<script>

var lat; // 위도
var lon; // 경도

$(document).ready(function(){
	setInterval(function(){
		$.ajax({
			url:"getMap",
			type:"POST",
			success : function(info){
				lat = info.split(',')[0];
				lon = info.split(',')[1];
			}
		});
		getMap();
	}, 2000);
});




var mapContainer = mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
    center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
    level: 5 // 지도의 확대 레벨 
};
var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
    
    
function getMap(){
	// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
	var locPosition = new daum.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
    message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다
	// 마커와 인포윈도우를 표시합니다
	displayMarker(locPosition, message);
}

// 지도에 마커와 인포윈도우를 표시하는 함수입니다
function displayMarker(locPosition, message) {

    // 마커를 생성합니다
    var marker = new daum.maps.Marker({  
        map: map, 
        position: locPosition
    }); 
    
    var iwContent = message, // 인포윈도우에 표시할 내용
        iwRemoveable = true;

    // 인포윈도우를 생성합니다
    var infowindow = new daum.maps.InfoWindow({
        content : iwContent,
        removable : iwRemoveable
    });
    
    // 인포윈도우를 마커위에 표시합니다 
    infowindow.open(map, marker);
    
    // 지도 중심좌표를 접속위치로 변경합니다
    map.setCenter(locPosition);      
}    
</script>
</body>
</html>