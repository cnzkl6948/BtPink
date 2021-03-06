$(function() {
	var video = document.getElementById('myVideo');
	if (navigator.webkitGetUserMedia) {
		navigator.webkitGetUserMedia({
			audio : false,
			video : true
		}, function(stream) {
			video.src = webkitURL.createObjectURL(stream);
		}, function(error) {
			alert('ERROR: ' + error.toString());
		});
	} else {
		alert('webkitGetUserMedia not supported');
	}
});

function takePhoto() {
	var store = document.getElementById('store');
	var video = document.getElementById('myVideo');
	// 캔버스에 그림을 그리기 위해, Canvas RenderingContext2D 값을 가져온다.
	var context = store.getContext('2d');
	// 그림의 크기는 video 의 크기와 같다.
	var width = video.videoWidth, height = video.videoHeight;
	if (width && height) {
		store.width = width;
		store.height = height;
		// (0, 0) 위치에서부터 비디오의 크기만큼의 좌표까지 video 의 이미지를 그린다.
		context.drawImage(video, 0, 0, width, height);
		// 캔버스에 그린 그림을 주소 형태로 반환한다.
		return store.toDataURL('image/png');
	}
}
function snapshot() {
	var set = document.getElementById('image');
	// 찍은 사진을 저장한다.
	var snap = takePhoto();
	// 이미지의 소스와 다운로드 링크 주소를 캔버스에서 그린 그림의 주소 값으로 한다.
	set.setAttribute('value', snap);
	$('#img_here').html(

			'<img id="selfieimage" src="' + snap + '">');
	$.ajax({
		url : "getCount",
		type : "POST",
		data : $('#formId').serialize(),
		success : function(count) {
			var url = '<img id="resultImg" src="https://www.btpink.xyz/www/resources/object_detection/test.jpg" />';
			// <img
			// src="https://www.btpink.xyz/www/resources/object_detection/test.jpg"
			// width="400" height="300"/>
			// <img
			// src="https://geonho.btpink.xyz/www/resources/object_detection/test.jpg"
			// width="400" height="300"/>
			// <img
			// src="https://dahuin.btpink.xyz/www/resources/object_detection/test.jpg"
			// width="400" height="300"/>
			// <img
			// src="https://suenghan.btpink.xyz/www/resources/object_detection/test.jpg"
			// width="400" height="300"/>

			var cnt = count + '人';
			$('#img').html(url);
			$('#hitocheck').html(cnt);
		}
	});
}
function closeModal() {
	$('#img').html('');
	$('#img_here').html('');
	$("#hitocheck").html('人数確認中&hellip; <br>30秒以上かかります。 <br>少々お待ちください。');
}