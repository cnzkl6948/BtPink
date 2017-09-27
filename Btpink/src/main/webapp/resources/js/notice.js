/**
 * 
 */
function pagingFormSubmit(currentPage) {
	var form = document.getElementById('pagingForm');
	var page = document.getElementById('page');
	page.value = currentPage;
	form.submit();
}
// 글삭제시 확인 스크립트
function deleteCheck(boardnum) {
	if (confirm("정말 삭제하시겠습니까?")) {
		location.href = 'deleteNotice?boardnum=' + boardnum;
	}
}

// 리플 쓰기 폼 체크
function replyFormCheck() {
	var retext = document.getElementById('retext');
	if (retext.value.length < 5) {
		alert('리플 내용을 입력하세요.');
		retext.focus();
		retext.select();
		return false;
	}
	return true;
}

// 리플 수정
function replyEditForm(replynum, boardnum, retext) {
	// 해당 리플번호를 붙여 생성한 <div>태그에 접근
	var div = document.getElementById("div" + replynum);

	var str = '<form name="editForm' + replynum
			+ '" action="replyEdit" method="post">';
	str += '<input type="hidden" name="replynum" value="' + replynum + '">';
	str += '<input type="hidden" name="boardnum" value="' + boardnum + '">';
	str += '<br>';
	str += '<div class="form-group"><input type="text" name="text" class="form-control border-color-4" value="' + retext
			+ '"style="width:530px;"></div>';

	str += '&nbsp;';
	str += '<button type="button" class="btn btn-xs btn-success"' 
		+'onclick="location.href=\'javascript:replyEdit(document.editForm'+replynum
	+ ')\'"> <i class="fa fa-rocket"> 저장 </i></button>';
	
	str += '&nbsp;';
/*	str += '<a href="javascript:replyEditCancle(document.getElementById(\'div'
			+ replynum + '\'))">[취소]</a>';
*/	
	str += '<button type="button" class="btn btn-xs btn-success"' 
		+ 'onclick="replyEditCancle(document.getElementById(\'div'
			+ replynum + '\'));"><i class="fa fa-rocket"> 취소 </i></button>';

	str += '</form>';
	div.innerHTML = str;
}

// 리플 수정 취소
function replyEditCancle(div) {
	div.innerHTML = '';
}

// 리플 수정 정보 저장
function replyEdit(form) {
	if (confirm('수정된 내용을 저장하시겠습니까?')) {
		form.submit();
	}
}

// 리플 삭제
function replyDelete(replynum, boardnum) {
	if (confirm('리플을 삭제하시겠습니까?')) {
		location.href = 'replyDelete?replynum=' + replynum + '&boardnum='
				+ boardnum;
	}
}

