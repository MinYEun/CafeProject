$(document).ready(function() {
	// login()함수 선언
	function login() {
		var query = {
			id : $("#id").val(),
			pw : $("#passwd").val()
		};
		$.ajax({
			type : "post",
			url : "/coffee/index.do",
			data : query,
			success : function(data){
			window.location.href="/coffee/mOrderCoffeemain.do";
			}
		});
	}

	// 로그인 버튼을 클릭하면 자동 실행
	$("#login").click(function() {
		login();
	}); // login

	// 패스워드에 커서를 두고 엔터키를 누르면 로그인 함
	$("#passwd").keydown(function(key) {
		if (key.keyCode == 13) {
			login();
		}
	});

	// 아이디에 커서를 두고 엔터키를 누르면 로그인 함
	$("#id").keydown(function(key) {
		if (key.keyCode == 13) {
			login();
		}
	});
	
//	$("#btn_point").click(function(){
//		alert("조회 버튼 클릭")
//		alert($("#cus_code").val());
//		var query = {
//				code : $("#cus_code").val()
//		};
//		$.ajax({
//			type : "post",
//			url : "/coffee/OneCustomerPro.do",
//			data : query,
//			success : function(data) {
//				location.href="/coffee/customer.do";
//			}
//		});
//	});
});
