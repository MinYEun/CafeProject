$(document).ready(function() {

	$("#add").click(function() {
		var query = {
			phone : $("#phone").val(),
			name : $("#name").val()
		}
		
		$.ajax({
			type : "post",
			url : "/coffee/mCusAdd.do",
			data : query,
			success : function(data) {
				alert("고객 추가 성공");
			}
		});

	});
});