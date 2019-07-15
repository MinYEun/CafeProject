$(document).ready(function(){
	
	$("#btn_mod").click(function(){
		var query = {
				phone : $("#phone").val(),
				af_phone : $("#af_phone").val()
		};
		$.ajax({
			type : "post",
			url : "/coffee/mCusMod.do",
			data : query,
			success : function(){
				window.location.href = "/coffee/mCusMod.do";
			}
		});
	});
	
	
});