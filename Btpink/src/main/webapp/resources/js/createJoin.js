/**
 * 
 */
function studentCheck(){
	var test =  $('#studentName').html('');
	$.ajax({
		url : "joinCheck",
		type : "get",
		data : {
			name:$('#studentName').val(),
			classno : $('#guiest_id3').val()
			},
			success :function(result) {
				//SelectStudent
				var SelectStudent = '<select name="guiest_id3" id="guiest_id3" class="select-drop" sb="26706380" style="top: 34px; max-height: 460.4px;">';
				$.each(result, function(index,result) {
					SelectStudent += '<option value="'+result.stdno+'">'+' 주소  : '+result.address+'생일'+result.birth+'</option>';
				} )
				SelectStudent += '</select>';
				 $('#SelectStudent').html(SelectStudent);
				 $('#studentSelectButton').html('');
				 $('#studentName').html('');
				 $('#type').val('p');
				 
			}
	});
}	