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
					alert("承認を待ってください。");
				} else {
					document.getElementById('joinSubmit').submit();
				}
			} else {
				alert("情報がありません。")
			}
		}
	});
})