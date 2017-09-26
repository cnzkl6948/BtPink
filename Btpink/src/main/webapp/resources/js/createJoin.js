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
					classno : $('#classno').val()
				},
				success : function(result) {
					// SelectStudent
					if (result[0] === undefined) {
						alert($('#studentName').val() + "학생이 없습니다");
					} else {

						var SelectStudent = '<div class="col-sm-12 col-xs-12"><select  id="stdno" name = "stdno" class="form-control" >';
						$.each(result, function(index, student) {
							SelectStudent += '<option ' + '" value="'
									+ student.stdno + '">' + ' 주소  : '
									+ student.address + ' 생일 : '
									+ student.birth + '</option>';
						})
						SelectStudent += '</select></div>';

						$('#SelectStudent').html(SelectStudent);
						$('#studentSelectButton').html('');
						$('#stduentNameCheck').html('');
					}
				}
			});
}

function idOverlap() {
	var id = $("#id").val();
	if (id.length > 5 && id.length < 13) { 
		$.ajax({
			url : "idOverlap",
			type : "get",
			data : "id=" + id,
			success : function(result) {
				// SelectStudent background-color: #337ab7
				var text = '';
				if (result == '1') {
					$("#basic-addon21").attr("style",
							"background-color: #337ab7");
					$("#id").attr("style", "background-color:#ffffff; ");
					$('#idCheck').val('true');
					$("#id").attr("readonly", "readonly");
				} else {
					alert("중복된 아이디가 있습니다.");
				}
			}
		});

	} else {
		alert("6~12자리수를 입력 해 주세요")
	}
}
function join() {
	var result = true;
	var SelectTeacher = $("#SelectTeacher").attr("aria-expanded");
	var name = $('#name').val();
	var pw = $('#pw').val();
	var pwCk = $('#pwCk').val();
	var email = $('#email').val();
	var idCheck = $('#idCheck').val();
	var stdno = $('#stdno').val();
	var phone = $('#phone').val();
	if (SelectTeacher == "false") {
		if (stdno === undefined) {
			alert("학생을 입력하시오.");
			result = false;
		} else {
			$('#type').val('p')
		}
	} else {
		$('#type').val('t')
	}

	if (result) {
		if (idCheck == "false") {
			alert("중복을 확인해 주세요");
		} else if (name == 0) {
			alert('이릅을 입력하시오');
		} else if (pw.length < 4 || pw.length > 13) {
			alert("비밀번호 3~12");
		} else if (pw != pwCk) {
			alert("비밀번호 불일치");
		} else if (email == "") {
			alert("email 입력");
		} else if (phone == "") {
			alert("휴대폰번호를 입력해 주세요")
		} else {
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

		$.ajax({
			url : "loginCheck",
			type : "post",
			data : "id=" + id + "&pw=" + pw,
			success : function(result) {
				// SelectStudent background-color: #337ab7
				if (result != "") {
					if (result.status == "0") {
						alert("회원승인을 기다리세요..");
					} else {
						document.getElementById('joinSubmit').submit();
					}
				} else {
					alert("회원정보가 없습니다.")
				}
			}
		});
	}
}
function className() {
	var text = '<div class="col-sm-8 col-xs-12"><select  id="classno" class="form-control" >';
	$.ajax({
		url : "classCheck",
		type : "post",
		success : function(result) {
			$.each(result, function(index, classData) {
				text +='<option value="'+classData.classNo +'" class="textCenter" >'+classData.className +'</option>'
			})
			text += '</select></div>';
			$('#SelectStudent').html(text);
			$('#createAccount').modal('toggle');
		}
	});
}
