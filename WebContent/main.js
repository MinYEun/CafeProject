$(document).ready(function() {
	

	$("#logout").click(function() {
		$.ajax({
			type : "POST",
			url : "/coffee/mg/managerLogout.do",
			success : function(data) {
				window.location.href = "/coffee/Login.jsp";
			}
		});
	});
	
	// 메뉴 추가
	$("#menu_add").click(function() {
		$.ajax({
			success : function(data) {
				window.location.href = "/coffee/mMenuAdd.do";
			}
		});
	});
	
	//메뉴 수정
	$("#menu_md").click(function() {
		$.ajax({
			success : function(data) {
				window.location.href = "/coffee/mMenuCoff.do";
			}
		});
	});	
	

	//적립금
	$("#point_sel").click(function() {
		$.ajax({
			success : function(data) {
				window.location.href = "/coffee/mPoint.do";
			}
		});
	});
		
	//메뉴 삭제
	$("#menu_del").click(function() {
		$.ajax({
			success : function(data) {
				window.location.href = "/coffee/mMenuDel.do";

			}
		});
	});	
	
	//직원 추가
	$("#staff_add").click(function() {
		$.ajax({
			success : function(data) {
				window.location.href = "/coffee/mStaffAdd.do";
			}
		});
	});
	
	//직원 조회
	$("#staff_sel").click(function() {
		$.ajax({
			success : function(data) {
				window.location.href = "/coffee/mStaffSel.do";
			}
		});
	});

	//직원 삭제
	$("#staff_sd").click(function() {
		$.ajax({
			type : "post",
			url : "/coffee/mStaffSelDel.do",
			success : function(data) {
				window.location.href = "/coffee/mStaffSelDel.do";
			}
		});
	});
	
	//고객 추가
	$("#cus_add").click(function() {
		$.ajax({
			success : function(data) {
				window.location.href = "/coffee/mCusAddForm.do";
			}
		});
	});
	
	//고객 조회
	$("#cus_sel").click(function() {
		$.ajax({
			success : function(data) {
				window.location.href = "/coffee/mCusSel.do";
			}
		});
	});
	
	//고객 수정
	$("#cus_mod").click(function() {
		$.ajax({
			success : function(data) {
				window.location.href = "/coffee/mCusMod.do";
			}
		});
	});
	
	//고객 삭제
	$("#cus_del").click(function() {
		$.ajax({
			type : "post",
			url : "/coffee/mCusSelDel.do",
			success : function(data) {
				window.location.href = "/coffee/mCusSelDel.do";
			}
		});
	});
	
	//주문 추가
	$("#order_add").click(function() {
		alert("클릭")
		$.ajax({
			success : function(data) {
				window.location.href = "/coffee/mOrderCoffeemain.do";
			}
		});
	});
	
	//매출 관리
	$("#sal_sel").click(function() {
		$.ajax({
			type : "post",
			url : "/coffee/salesPro.do",
			success:function(data) {
				window.location.href="/coffee/salesMain.do";
			}
		});
	});
});