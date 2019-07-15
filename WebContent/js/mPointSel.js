$(document).ready(function(){
	
	//조회 눌렀을때
	$("#select").click(function(){
		 var query = {
				 cus_code :  $("#cus").val()
		 };
		 $.ajax({
	        type:"post",
	        url : "/coffee/mCusPoSel.do",
	        data : query,
	        success:function(data){
	        	location.href="/coffee/mngr/mCusPoSel.jsp";
	         }
	    });
	});
	
	//사용 눌렀을때
	$("#use").click(function(){
		 var bonus = $("#use_point").val();
	     Number(bonus);
	     
	     opener.document.getElementById("use_po").value = document.getElementById("use_point").value;
	     opener.realprice();
	     
	     window.close();
	})
});