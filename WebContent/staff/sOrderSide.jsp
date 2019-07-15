<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link href="/coffee/css/staff/sOrderSide.css" rel="stylesheet" type="text/css">
<script src="/coffee/js/sMenu.js"></script>

		<div class="order_s_m">
			<h1>주문관리　　─　　추가</h1>
			<hr />
			<div id="menu_class">
				<button id="orcoffee">COFFEE</button>
				<button id="orsmoothie">SMOOTHIE</button>
				<button id="orade">ADE</button>
				<button id="orside_menu">SIDE MENU</button>
			</div>
			<div class="list_wrap">
				<div class="cheeze_cake">
				<label for="menu_ch">
					<img id="cheeze_cake" src="/coffee/images/필라델피아 치즈케이크.png"></label> <br> <input
						type="checkbox" id="menu_ch">필라델피아 치즈케이크
				</div>

				<div class="honey">
				<label for="menu_ch2">
					<img id="honey" src="/coffee/images/허니브레드.png"></label> <br> <input
						type="checkbox" id="menu_ch2">허니브레드
				</div>

				<div class="cro">
				<label for="menu_ch3">
					<img id="cro" src="/coffee/images/크로크무슈.png"></label><br> <input
						type="checkbox" id="menu_ch3">크로크무슈
				</div>

				<div class="cream">
				<label for="menu_ch4">
					<img id="cream" src="/coffee/images/생크림 카스테라.png"></label> <br> <input
						type="checkbox" id="menu_ch4">생크림 카스테라
				</div>
			</div>
			<!-------------------------------------------------------------------->
			<div class="list_wrap2">
				<div class="newyork">
				<label for="menu_ch5">
					<img id="newyork" src="/coffee/images/뉴욕치크케이크.png"></label> <br> <input
						type="checkbox" id="menu_ch5">뉴욕치크케이크
				</div>

				<div class="danhobak">
				<label for="menu_ch6">
					<img id="danhobak" src="/coffee/images/단호박타르트.png"></label> <br> <input
						type="checkbox" id="menu_ch6">단호박타르트
				</div>

				<div class="blueberry">
				<label for="menu_ch7">
					<img id="blueberry" src="/coffee/images/블루베리머핀.png"></label> <br> <input
						type="checkbox" id="menu_ch7">블루베리머핀
				</div>

				<div class="choco_choco">
				<label for="menu_ch8">
					<img id="choco_choco" src="/coffee/images/초코초코케이크.png"></label> <br> <input
						type="checkbox" id="menu_ch8">초코초코케이크
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
