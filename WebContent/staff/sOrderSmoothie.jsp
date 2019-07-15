<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link href="/coffee/css/staff/sOrderSmoothie.css" rel="stylesheet" type="text/css">
<script src="/coffee/js/sMenu.js"></script>

		<div class="order_smo">
			<h1>주문관리　　─　　추가</h1>
			<hr />
			<div id="menu_class">
				<button id="orcoffee">COFFEE</button>
				<button id="orsmoothie">SMOOTHIE</button>
				<button id="orade">ADE</button>
				<button id="orside_menu">SIDE MENU</button>
			</div>
			<div class="list_wrap">
				<div class="choco_blendee">
				<label for="menu_ch">
					<img id="ame" src="/coffee/images/초코 바닐라 블렌디드.png"></label> <br> <input
						type="checkbox" id="menu_ch">초코 바닐라 블렌디드
				</div>

				<div class="darkchoco_blendee">
				<label for="menu_ch2">
					<img id="lat" src="/coffee/images/다크 초코 블렌디드.png"></label> <br> <input
						type="checkbox" id="menu_ch2">다크 초코 블렌디드
				</div>

				<div class="blueberry">
				<label for="menu_ch3">
					<img id="blueberry" src="/coffee/images/블루베리 스무디.png"></label> <br> <input
						type="checkbox" id="menu_ch3">블루베리 스무디
				</div>

				<div class="mango">
				<label for="menu_ch4">
					<img id="mango" src="/coffee/images/망고 스무디.png"></label> <br> <input
						type="checkbox" id="menu_ch4">망고 스무디
				</div>
			</div>
			<!-------------------------------------------------------------------->
			<div class="list_wrap2">
				<div class="lemonade">
				<label for="menu_ch5">
					<img id="lemonade" src="/coffee/images/레모네이드 스무디.png"></label> <br> <input
						type="checkbox" id="menu_ch5">레모네이드 스무디
				</div>

				<div class="strawberry">
				<label for="menu_ch6">
					<img id="strawberry" src="/coffee/images/스트로베리 스무디.png"></label> <br> <input
						type="checkbox" id="menu_ch6">스트로베리 스무디
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
</body>
</html>