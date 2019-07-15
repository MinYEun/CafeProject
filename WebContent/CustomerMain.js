$(document).ready(function(){
	$("#btn_sel").click(function(){
		alert("조회 버튼 클릭")
		alert($("#cus_code").val());
		var query = {
				phone : $("#cus_code").val()
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