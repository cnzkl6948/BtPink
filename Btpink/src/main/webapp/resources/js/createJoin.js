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
						alert($('#studentName').val() + "学生がすでに登録されていたり、入力した学生の名前がいません。");
					} else {

						var SelectStudent = '<div class="col-sm-12 col-xs-12"><select  id="stdno" name = "stdno" class="form-control" >';
						$.each(result, function(index, student) {
							SelectStudent += '<option ' + '" value="'
									+ student.stdno + '">' + ' 住所  : '
									+ student.address + ' 誕生日 : '
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
					alert("すでに登録されています。");
				}
			}
		});

	} else {
		alert("6~12字の中で入力してください。")
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
			alert("学生を入力してください。");
			result = false;
		} else {
			$('#type').val('p')
		}
	} else {
		$('#type').val('t')
	}

	if (result) {
		if (idCheck == "false") {
			alert("チェックしてください。");
		} else if (name == 0) {
			alert('名前を入力してください。');
		} else if (pw.length < 4 || pw.length > 13) {
			alert("秘密番号 3~12");
		} else if (pw != pwCk) {
			alert("秘密番号 不一致");
		} else if (email == "") {
			alert("email入力");
		} else if (phone == "") {
			alert("電話番号を入力してください。")
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
		alert('ユーザー名を入力してください。');
	} else if (pw == '') {
		alert('秘密番号を入力してください。')
	} else {

		$.ajax({
			url : "loginCheck",
			type : "post",
			data : "id=" + id + "&pw=" + pw,
			success : function(result) {
				// SelectStudent background-color: #337ab7
				if (result != "") {
					if (result.status == "0") {
						alert("承認を待ってください。");
					} else {
						document.getElementById('joinSubmit').submit();
					}
				} else {
					alert("情報がありません。")
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
