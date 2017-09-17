/**
 * 
 */

$(document).ready(function() {
	$('input').iCheck({
		checkboxClass : 'icheckbox_flat-red',
		radioClass : 'iradio_flat-red'
	});
});

$(function() {
	$('#dateRange').daterangepicker();
});
// 글쓰기폼 확인
function formCheck() {
	var title = document.getElementById('title');
	var content = document.getElementById('content');

	if (title.value.length < 5) {
		alert("제목을 입력하세요.");
		title.focus();
		title.select();
		return false;
	}
	if (content.value.length < 5) {
		alert("내용을 입력하세요.");
		title.focus();
		title.select();
		return false;
	}
	return true;
}

function subjectCheck() {
	var subject_selectBox = document.getElementById("demandsubject");
	var selectedValue = subject_selectBox.options[subject_selectBox.selectedIndex].value;

	if (selectedValue == "attendence") {
		$('#attend').removeAttr('disabled');
	} else {
		$('#attend').attr('disabled', 'disabled');
	}
}


