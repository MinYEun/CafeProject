$(document).ready(function(){
	
	$("#btn_point").click(function(){
		alert("조회 버튼 클릭")
		alert($("#cus_code").val());
		var query = {
				code : $("#cus_code").val()
		};
		$.ajax({
			type : "post",
			url : "/coffee/mOnePoint.do",
			data : query,
			success : function(data) {
				location.href="/coffee/mPoint.do";
			}
		});
	});
	
});