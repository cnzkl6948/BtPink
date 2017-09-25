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


</script>
</head>
<body>
<h1>유치원 버스 좌표 정보 전송 페이지 접속 중</h1>
<form id="send" action="locationSend" method="post">
	<input type="hidden" id="latt" name="latt" readonly="readonly">
	<input type="hidden" id="lont" name="lont" readonly="readonly">
</form>
<br>
</body>
</html>