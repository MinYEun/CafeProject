$(document).ready(function(){
	
	$("#btn_sel").click(function(){
		alert("조회 버튼 클릭");
		var query = {
				stf_code : $("#stf_code").val()
		};
		$.ajax({
			type : "post",
			url : "/coffee/mStaffOneSel.do",
			data : query,
			success : function(data) {
				location.href="/coffee/mStaffSel.do";
			}
		});
	});
	
});