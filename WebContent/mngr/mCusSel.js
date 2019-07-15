$(document).ready(function(){
	
	$("#btn_sel").click(function(){
		alert("조회 버튼 클릭");
		var query = {
				phone : $("#stf_num").val()
		};
		$.ajax({
			type : "post",
			url : "/coffee/mCusOneSel.do",
			data : query,
			success : function(data) {
				location.href="/coffee/mCusSel.do";
			}
		});
	});
	
});