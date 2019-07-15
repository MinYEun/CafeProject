<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />

<link href="/coffee/css/staff/sMainForm.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="/coffee/js/sMenu.js"></script>

<c:if test="${empty sessionScope.id }">
	<div id="status">
		로그인 안됨
	</div>
</c:if>

<c:if test="${!empty sessionScope.id }">
<script>
 	$(document).ready(function(){ 
		$("#uplaod").on("change", loadFile); 
 	}); -->
	function loadFile(event){ -->
 		if(event.files && event.files[0]){ 
			var reader = new FileReader(); 
 			reader.onload = function(e) { 
 				$('#menu_img').attr('src', e.target.result);
 			} 
 			reader.readAsDataURL(event.files[0]);
 		} 
 	} 
</script> 

	<div class="outer">
		<span class="menu">
			<div class="menulogo">
				<img width="250px" height="120px" alt="logo" src="/coffee/images/coffee.jpg" />		
			</div>
			<div class="cus_mn">
				<ul>
					<li>고객관리
					<ul>
						<li><button id="cus_add">추가</button>
						<li><button id="cus_sd">조회/삭제</button>
					</ul>
				</ul>
			</div>
			<div class="order_mn">
				<ul>
					<li>주문관리
					<ul>
						<li><button id="order_add">추가</button>
					</ul>
				</ul>
			</div>
		</span>
		<div class="status">
     	 xxx님 안녕하세요
      	<button id="logout"> 로그아웃</button>
   		 </div>
	<div class="ch_screen">
		<div class="order_coff">
			<h1>주문관리　　─　　추가</h1>
			<hr />
			<div id="menu_class">
				<button id="orcoffee">COFFEE</button>
				<button id="orsmoothie">SMOOTHIE</button>
				<button id="orade">ADE</button>
				<button id="orside_menu">SIDE MENU</button>
			</div>
			<div class="list_wrap">
				<div class="americano">
					<label for="menu_ch">
					<img id="ame" src="/coffee/images/아메리카노.png"></label> <br> <input
						type="checkbox" id="menu_ch">아메리카노
				</div>

				<div class="cafelatte">
				<label for="menu_ch2">
					<img id="lat" src="/coffee/images/아이스 모카.png"></label> <br> <input
						type="checkbox" id="menu_ch2">아이스 모카
				</div>

				<div class="capu">
				<label for="menu_ch3">
					<img id="lat" src="/coffee/images/아이스 카푸치노.png"></label> <br> <input
						type="checkbox" id="menu_ch3">아이스 카푸치노
				</div>

				<div class="Caramel">
				<label for="menu_ch4">
					<img id="lat" src="/coffee/images/카라멜 라떼.png"></label> <br> <input
						type="checkbox" id="menu_ch4">카라멜 라떼
				</div>
			</div>
			<!-------------------------------------------------------------------->
			<div class="list_wrap2">
				<div class="coldbru">
				<label for="menu_ch5">
					<img id="coldwhite" src="/coffee/images/콜드브루 화이트.png"></label> <br> <input
						type="checkbox" id="menu_ch5">콜드브루 화이트
				</div>

				<div class="coldbru_black">
				<label for="menu_ch6">
					<img id="coldblack" src="/coffee/images/콜드브루 블랙.png"></label> <br> <input
						type="checkbox" id="menu_ch6">콜드브루 블랙
				</div>

				<div class="ice_latte">
				<label for="menu_ch7">
					<img id="ice_latte" src="/coffee/images/아이스 라떼.png"></label> <br> <input
						type="checkbox" id="menu_ch7">아이스 라떼
				</div>

				<div class="ice_drip">
				<label for="menu_ch8">
					<img id="ice_drip" src="/coffee/images/아이스 드립커피.png"></label> <br> <input
						type="checkbox" id="menu_ch8">아이스 드립커피
				</div>
			</div>
		</div>
				<div class="menu_order">
			주문 목록<br> <input type="text" width="50px" placeholder="메뉴 명">
			<select name="number">
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
				<option>6</option>
				<option>7</option>
				<option>8</option>
				<option>9</option>
				<option>10</option>
			</select><br>
			<div class="sum">
				<input type="text" placeholder="총 금액">
			</div>
			<button id="btn_j" type="submit">적립</button>
			<button id="btn_j" type="submit">쿠폰</button>
		</div>
			
		</div>
	

	</div>
</c:if>