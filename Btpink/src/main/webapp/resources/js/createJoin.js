/**
 * 
 */
function studentCheck() {
	var test = $('#studentName').html('');
	$
			.ajax({
				url : "joinCheck",
				type : "get",
				data : {
					name : $('#studentName').val(),
					classno : $('#guiest_id3').val()
				},
				success : function(result) {
					// SelectStudent
					if (result[0] === undefined) {
						alert($('#studentName').val() + "학생이 없습니다");
					} else {

						var SelectStudent = $('#studentName').val()
								+ '<select  id="stdNo" name = "stdNo" class="select-drop" sb="26706380" style="top: 34px; max-height: 460.4px;">';
						$.each(result, function(index, result) {
							SelectStudent += '<option value="' + result.stdNo
									+ '">' + ' 주소  : ' + result.address
									+ '생일 : ' + result.birth + '</option>';
						})
						SelectStudent += '</select>';
						$('#SelectStudent').html(SelectStudent);
						$('#studentSelectButton').html('');
						$('#stduentNameCheck').html('');
						$('#type').val('p');
					}
				}
			});
}

function idOverlap() {
	var id = $("#id").val();
	alert("아이디 : " + id);
	$.ajax({
		url : "idOverlap",
		type : "get",
		data : "id="+id,
		success : function(result) {
			// SelectStudent
			alert(result);
			var text = '';
			if (result == '1') {

				text += id + '는 사용 하실 수 있습니다.';
				$('#idCheck').val('true');
				$('#idCheckText').html(text);
			} else {
				text += id + '는 사용 할 수 없습니다';
				$('#idCheck').val('false');
				$('#idCheckText').html(text);
			}
		}
	});
}
function join() {
	var result = true;
	var SelectTeacher = $("#SelectTeacher").attr("aria-expanded");
	var id = $('#id').val();
	var name = $('#name').val();
	var pw = $('#pw').val();
	var pwCk = $('#pwCk').val();
	var email = $('#email').val();
	var idCheck = $('#idCheck').val();
	var stdNo = $('#stdNo').val();
	var phone = $('#phone').val();
	if (SelectTeacher == "false") {
		if (stdNo === undefined) {
			alert("학생을 입력하시오.");
			$('#type').val('p')
			result = false;
		}
	} else {
		$('#type').val('t')
	}

	if (result) {
		if (idCheck == "false") {
			alert("중복을 확인해 주세요");
		} else if (id == "") {
			alert("아이디를 입력 하시오");
		} else if (pw != pwCk) {
			alert("비밀번호 불일치");
		} else if (email == "") {
			alert("email 입력");
		} else if (phone == "") {
			alert("휴대폰번호를 입력해 주세요")
		} else { // $("#createSubmit").submit();
			document.getElementById('createSubmit').submit();
		}
	}
}
function login() {
	$('#id').val('');
	$('#pw').val('');
	loginPw
	var id = $('#loginId').val();
	var pw = $('#loginPw').val();
	if (id == '') {
		alert('아이디 입력');
	} else if (pw == '') {
		alert('비밀번호 입력')
	} else {
		document.getElementById('joinSubmit').submit();
	}

}
