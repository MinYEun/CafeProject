<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link href="/coffee/css/staff/sOrderAde.css" rel="stylesheet" type="text/css">
<script src="/coffee/js/sOrder.js"></script>
	
		<div class="order_ade">
			<h1>주문관리　　─　　추가</h1>
			<hr />
			<div id="menu_class">
				<button id="orcoffee">COFFEE</button>
				<button id="orsmoothie">SMOOTHIE</button>
				<button id="orade">ADE</button>
				<button id="orside_menu">SIDE MENU</button>
			</div>
			<div class="list_wrap">
				<div class="strawberry_mango">
					<label for="menu_ch">
					<img id="strawberry_mango" src="/coffee/images/딸기망고 에이드.png"></label> <br> 
					<input type="checkbox" id="menu_ch">딸기망고 에이드
				</div>

				<div class="melon_soda">
					<label for="menu_ch2">
					<img id="melon_soda" src="/coffee/images/메론소다.png"></label> <br> 
					<input type="checkbox" id="menu_ch2">메론소다
				</div>

				<div class="apple_icetea">
					<label for="menu_ch3">
					<img id="apple_icetea" src="/coffee/images/애플유자아이스티.png"> </label><br> 
					<input type="checkbox" id="menu_ch3">애플유자 아이스티
				</div>

				<div class="orange_ade">
					<label for="menu_ch4">
					<img id="orange_ade" src="/coffee/images/오렌지에이드.png"></label> <br> 
					<input type="checkbox" id="menu_ch4">오렌지 에이드
				</div>
			</div>
			<!-------------------------------------------------------------------->
			<div class="list_wrap2">
				<div class="vitamin">
				<label for="menu_ch5">
					<img id="vitamin" src="/coffee/images/비타민레몬에이드.png"></label> <br> 
					<input type="checkbox" id="menu_ch5">비타민레몬에이드
				</div>

				<div class="jamong">
				<label for="menu_ch6">
					<img id="jamong" src="/coffee/images/자몽에이드.png"> </label> 
					<br> <input type="checkbox" id="menu_ch6">자몽 에이드
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