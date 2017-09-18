var url = ''; //ajaxsubmit에서 받은 url값을 addface로 전달해주기 위한 전역변수

function readUploadImage(inputObject) {

	/*
	 * 
	 * 브라우저에서 FileReader가 지원되는지
	 * 
	 * 확인하기 위해
	 * 
	 * window.File && window.FileReader
	 * 
	 * 해 본다.
	 * 
	 * 
	 */

	if (window.File && window.FileReader) {

		/*
		 * 
		 * 입력된 파일이 1개 이상 있는지 확인~
		 * 
		 */

		if (inputObject.files && inputObject.files[0]) {

			/* 이미지 파일인지도 체크해 주면 좋지~ */

			if (!(/image/i).test(inputObject.files[0].type)) {

				alert("이미지 파일을 선택해 주세요!");

				return false;

			}

			/* FileReader 를 준비 한다. */

			var reader = new FileReader();

			reader.onload = function(e) {

				/* reader가 다 읽으면 imagePreview에 뿌려 주면 끝~ */

				$('#imagePreview').attr('src', e.target.result);
				$('#imgSelect').val('ok');

			}

			/* input file에 있는 파일 하나를 읽어온다. */

			reader.readAsDataURL(inputObject.files[0]);

		}

	} else {

		alert("미리보기 안되요.~ 브라우저를 업그레이드하세요~");

	}

}

/*
 * 
 * input 태그에 보통
 * 
 * <element onchange="SomeJavaScriptCode">
 * 
 * 해 주던지 아님
 * 
 * jquery를 이용해 change 이벤트를 달아 줘도 된다.
 * 
 */

$("#uploadImage").change(function() {

	readUploadImage(this);

});

function apper(){
	//등록 시작
	firstform();
//	$('#formId').submit();
}

function firstform(){
	var formData = new FormData(document.getElementById('formId'));
	$.ajax({
        url: "Sapply",
//      enctype: "multipart/form-data",
        type: "POST",
        data: formData,
        processData : false,
        contentType: false,
        success: function(result)
        {	
        	alert('이미지 전달 성공 리턴');  	
        	url=result; //전달받은 result값 = 이미지의 url
           	addPerson();
        }
    });
}
	
	


function cancel(){
	$('#formId')[0].reset();
}

//personid에 faceid를 삽입한다.
function addFace(personID) {
	alert(url);
    $.ajax({
        url: "https://westcentralus.api.cognitive.microsoft.com/face/v1.0/persongroups/example-group-00/persons/"+personID+"/persistedFaces",
        beforeSend: function(xhrObj){
            // Request headers
            xhrObj.setRequestHeader("Content-Type","application/json");
            xhrObj.setRequestHeader("Ocp-Apim-Subscription-Key","d98e1b55a315483ea2658fbc75ef68b3");
        },
        type: "POST",
        // Request body
        data: JSON.stringify({
        	"url": url
        })
    })
    .done(function(data) {
        alert("add face success");
        train();
    })
    .fail(function() {
        alert("add face error");
    });
}

//persongroupid의 변경사항을 갱신한다(학습한다).
function train() {
 
   $.ajax({
       url: "https://westcentralus.api.cognitive.microsoft.com/face/v1.0/persongroups/example-group-00/train",
       beforeSend: function(xhrObj){
           // Request headers
           xhrObj.setRequestHeader("Ocp-Apim-Subscription-Key","d98e1b55a315483ea2658fbc75ef68b3");
       },
       type: "POST",
       // Request body
       data: JSON.stringify({
       	  	
       })
       
   })
   .done(function(data) {
       alert("train success");
   })
   .fail(function() {
       alert("train error");
   });
}
//person group에 person을 생성한다.
function addPerson() {
    var name = $('#name').val();
    var userData = $('#height').val();
  	
    $.ajax({
        url: "https://westcentralus.api.cognitive.microsoft.com/face/v1.0/persongroups/example-group-00/persons",
        beforeSend: function(xhrObj){
            // Request headers
            xhrObj.setRequestHeader("Content-Type","application/json");
            xhrObj.setRequestHeader("Ocp-Apim-Subscription-Key","d98e1b55a315483ea2658fbc75ef68b3");
        },
        type: "POST",
        // Request body
        data: JSON.stringify({
        	"name": name,
            "userData": userData
        })
    })
    .done(function(data) {
        alert("add person success");
        alert(JSON.stringify(data, null));
//        $('#formId').submit();
        var personID = data.personId;
        $('#personalid').val(personID); //추출한 personID 폼에 입력
        secondform(); //DB입력을 위한 2차 폼 전송

//         $("#responseTextArea").val(personID);
//         $("#data").val(personID);
         addFace(personID);
    })
    .fail(function() {
        alert("add person error");
    });
}

function secondform(){
	var formData = new FormData(document.getElementById('formId'));
	$.ajax({
        url: "secondform",
        type: "POST",
        data: formData,
        processData : false,
        contentType: false,
        success: function(result)
        {	
        	alert('DB 입력 폼 전달 성공 리턴');  	
//        	url=result; //전달받은 result값 = 이미지의 url
//           	addPerson();
        }
    });
}