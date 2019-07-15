$(document).ready(function(){
	$("#order_add").click(function(){ //[상품등록] 버튼 클릭
		window.location.href = "/coffee/staff/sMainForm.jsp";
	});
});
	

$(document).ready( function() {
  	  $("#cus_add").on("click", function(){
  		 $(".ch_screen").load("sCusAddForm.jsp")
  	});
  	  $("#cus_sd").on("click", function(){
  		  $(".ch_screen").load("sCusDel.jsp");
  	});
  	  $("#menu_add").on("click", function(){
  		  $(".ch_screen").load("sMenuAdd.jsp");
  	  });
});

$(document).ready( function() {
	$("#orcoffee").click(function(){ //[상품등록] 버튼 클릭
		window.location.href = "/coffee/staff/sMainForm.jsp";
	});
	  $("#orsmoothie").on("click", function() {
		  $(".ch_screen").load("sOrderSmoothie.jsp");
  });
	  $("#orade").on("click", function() {
		  $(".ch_screen").load("sOrderAde.jsp");
  });
	  $("#orside_menu").on("click", function() {
		  $(".ch_screen").load("sOrderSide.jsp");
  });
});
