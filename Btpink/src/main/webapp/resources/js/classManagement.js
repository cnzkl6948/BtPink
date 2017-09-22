/**
 * 
 */

function classNameCheck() {
	var className = $("#className").val();
	if (className.length > 1 && className.length < 9) {
		$.ajax({
			url : "classNameCheck",
			type : "get",
			data : "className=" + className,
			success : function(result) {
				// SelectStudent background-color: #337ab7
				var text = '';
				if (result == '1') {
					$("#className").attr("readonly",true);
					$("#classNameHidden").val("ok");
				} else { 
					alert("중복된 반이름이 있습니다.");
				}
			}
		});

	} else {
		alert("2~8자리수를 입력 해 주세요")
	}
}



function teacherNameCheck() {
	var teacherName = $("#teacherName").val();
	if (teacherName.length > 1) {
		$.ajax({
			url : "teacherNameCheck",
			type : "get",
			data : "name=" + teacherName,
			success : function(result) {
			// SelectStudent
			if (result[0] === undefined) {
				alert($('#teacherName').val() + "선생님이 없습니다");
			} else {
				var SelectTeacher = '<label for="teacherList" class="col-sm-3 control-label">선생님목록</label> <div class="col-sm-9"> <select id="memNo" name="memNo" class="select-drop"><option value="" disabled selected>선생님 정보를 선택하세요.</option>';
				$.each(result, function(index, account) {
					SelectTeacher += '<option ' + '" value="'
							+ account.memNo + '">' + ' e-mail주소  : '
							+ account.email + ' tel : '
							+ account.phone + '</option>';
				})
				SelectTeacher += '</select></div>';

				$('#SelectTeacher').html(SelectTeacher);
			}
		}
				
		});

	} else {
		alert("담임선생님을 입력 해 주세요")
	}
}

function formCheck(){
	var age_selectBox = document.getElementById("age");
	var selectedValue = age_selectBox.options[age_selectBox.selectedIndex].value;
	
	var teacher_selectBox = document.getElementById("memNo");
	var selectedTValue = teacher_selectBox.options[teacher_selectBox.selectedIndex].value;

	if(($('#className').val() === "")||($('#classNameHidden').val() != "ok")){
		alert('반 이름을 확인해 주세요');
 		return false;
	}
	else if(selectedValue == "나이"){
		alert('나이를 선택해 주세요.');
 		return false;
	}
	else if(($('#memNo').val() === "")||($('#teacherCheck').val() === "")||(selectedTValue === "") ){
		alert('선생님의 상세정보를 확인해 주세요');
		return false;
	}
	return true;
};

