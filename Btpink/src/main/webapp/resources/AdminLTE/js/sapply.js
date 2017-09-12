$(function(){
	//Date picker
    $('#datepicker').datepicker({
      autoclose: true
    });
    
	$('#formId').submit(function(){
		if($('#name').val() === ""){
			alert('이름을 작성해 주세요');
			return false;
		}
		if($('#classno').val() === ""){
			alert('반 이름을 작성해 주세요');
			return false;
		}
		if($('#height').val() === ""){
			alert('키를 작성해 주세요');
			return false;
		}
		if($('#birth').val() === ""){
			alert('생일을 작성해 주세요');
			return false;
		}
		if($('#address').val() === ""){
			alert('주소를 작성해 주세요');
			return false;
		}
		if($('#imgSelect').val() === "notyet"){
			alert('사진을 넣어 주세요');
			return false;
		}
		return true;
	});
});

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


function submit(){
	$('#formId').submit();

}
function cancel(){
	$('#formId')[0].reset();
}