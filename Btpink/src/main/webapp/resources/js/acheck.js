$(function() {
	var video = document.getElementById('myVideo');
	if (navigator.webkitGetUserMedia) {
		navigator.webkitGetUserMedia({
			audio : false,
			video : true
		}, function(stream) {
			video.src = window.URL.createObjectURL(stream);
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
	var formId = document.getElementById('formId');
	$('#img_here').html(
			'<img id="selfieimage" src="' + snap + '" width="100%">');

	// image.setAttribute('src', snap);

	set.setAttribute('value', snap);
	// image.setAttribute('style', 'display: block;');
	$.ajax({
		url : "detectImage",
		type : "POST",
		data : $("#formId").serialize(), // serializes the form's elements.
		success : function(PersonId) {
			// show response from the php script.
			alert(PersonId);
		}
	});
}
function getName(personId) {
	var params = {};

	$
			.ajax(
					{
						url : "https://westcentralus.api.cognitive.microsoft.com/face/v1.0/persongroups/example-group-00/persons/"
								+ personId + "?" + $.param(params),
						beforeSend : function(xhrObj) {
							// Request headers
							xhrObj.setRequestHeader("Content-Type",
									"application/json");
							xhrObj.setRequestHeader(
									"Ocp-Apim-Subscription-Key",
									"6bfd85c06c0b42b8bc879751a17f71bf");
						},
						type : "GET",
						// Request body
						data : JSON.stringify({
							"personGroupId" : "example-group-00",
							"personIds" : [ personId ]
						})

					}).done(function(data) {
				$("#chulcheck").html(data.name);
			}).fail(function() {
				alert("getName error");
			});
}

function closeModal() {
	$('#img_here').html('');
	$("#chulcheck").val('출석 체크 중&hellip;');
}