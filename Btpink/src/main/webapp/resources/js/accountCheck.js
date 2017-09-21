/**
 * 
 */
$(function() {

	$.ajax({
		url : "accountCheck",
		type : "get",
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
})