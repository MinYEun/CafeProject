$(document).ready(function() {

	$("#delete").click(function() {
		alert($("input[name='check']:checked").val())
		var query = {
				stf_code : $("input[name='check']:checked").val()
				//그냥 체크한 name값을 확인해서 내가 원하는 체크박스를 불러옴
		}
		$.ajax({
			type : "POST",
			url : "/coffee/mStaffDel.do",
			data : query,
			success : function(data) {
				window.location.href = "/coffee/mStaffSelDel.do";
			}
		});
	});
	
});