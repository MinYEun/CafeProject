$(document).ready(function(){
	
	$("#add").click(function(){
		
		var query= {
				
				id : $("#stf_num").val(),
				name : $("#stf_name").val(),
				tel : $("#stf_ph").val(),
				pw : $("#stf_pw").val()

		}
		
		
		$.ajax({
		
			type : "post",
			url : "/coffee/mStaffAdd.do",
			data : query,
			success : function(data) {
				
				alert("추가 성공");
				
			}
		});
		
	});
	
});