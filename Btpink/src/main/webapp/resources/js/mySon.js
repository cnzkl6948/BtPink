/**
 * 
 */

//$(document).ready(function() {
//	$('input').iCheck({
//		checkboxClass : 'icheckbox_flat-red',
//		radioClass : 'iradio_flat-red'
//	});
//});

$(function() {
	$('#dateRange').daterangepicker();
});
// 글쓰기폼 확인
function formCheck() {
	var title = document.getElementById('title');
	var content = document.getElementById('content');

	if (title.value.length < 5) {
		alert("話題を5字以上入力してください。");
		title.focus();
		title.select();
		return false;
	}
	if (content.value.length < 5) {
		alert("内容を5字以上入力してください。");
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

function formDemandCheck() {
	  var demandsubject =  document.getElementById('demandsubject');
	  var attend = document.getElementById('attend');
	  var content = document.getElementById('demandcontent');
	//출석일때 분류선택 유효성검사
	  if (demandsubject.value == 'attendence') {
		if(attend.value == ""){
			alert("出席の分類を決めてください。");
			return false;
		}
	}
	  //제목 유효성검사
	  if (demandsubject.value.length < 1) {
			alert("話題を選んでください。");
			return false;
		}
		
		//내용 유효성 검사
		if (content.value.length < 5) {
			alert("内容を5字以上入力してください。");
			content.focus();
			content.select();
			return false;
		}
		return true;
	}


