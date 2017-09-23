$(function(){
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
	var formTest = document.getElementById('formTest');
	set.setAttribute('value', snap);
	$.ajax({
		url : "detectImage",
		type : "POST",
		data : $("#formTest").serialize(), // serializes the form's elements.
		success : function(detectFaceId) {
			// show response from the php script.
z//			$.ajax({
//				url : "https://westcentralus.api.cognitive.microsoft.com/face/v1.0/identify",
//				beforeSend : function(xhrObj) {
//					// Request headers
//					xhrObj.setRequestHeader(
//							"Content-Type",
//							"application/json");
//					xhrObj.setRequestHeader(
//									"Ocp-Apim-Subscription-Key",
//									"d98e1b55a315483ea2658fbc75ef68b3");
//				},
//				type : "POST",
//				// Request body
//				data : JSON.stringify({
//							"personGroupId" : "example-group-00",
//							"faceIds" : detectFaceId,
//							"maxNumOfCandidatesReturned" : 2,
//							"confidenceThreshold" : 0.5
//						})
//				}).done(
//					function(data) {
//						$("#responseTextArea").val(JSON.stringify(data, null, 2));
//						try {
//							var personId = data[0].candidates[0].personId;
//							getName(personId);
//						} catch (exception) {
//							alert('누구??? 첨보는 얼굴인데');
//						}
//					}).fail(function() {
//					alert("error");
//				});
		}
	});
}
function getName(personId) {
	var params = {};
	$.ajax({
			url : "https://westcentralus.api.cognitive.microsoft.com/face/v1.0/persongroups/btpink-1/persons/"
					+ personId + "?" + $.param(params),
			beforeSend : function(xhrObj) {
				// Request headers
				xhrObj.setRequestHeader("Content-Type",
						"application/json");
				xhrObj.setRequestHeader(
						"Ocp-Apim-Subscription-Key",
						"d98e1b55a315483ea2658fbc75ef68b3");
			},
			type : "GET",
			// Request body
			data : JSON.stringify({
				"personGroupId" : "example-group-00",
				"personIds" : [ personId ]
			})

		}).done(function(data) {
		$("#responseTextArea").val(data.name);
	}).fail(function() {
		alert("getName error");
	});
}