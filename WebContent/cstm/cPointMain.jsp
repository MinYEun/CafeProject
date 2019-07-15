<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link href="/coffee/css/cstm/cPoint.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="/coffee/cstm/cDisplay.js"></script>
	<div class="outer">

		<span class="menu">
			<div class="menulogo">
				<img width="250px" height="120px" alt="logo" src="/coffee/images/coffee.jpg" />
			</div>
			<div class="point">
				<ul>
					<li><button id="point_sel">적립금 조회</button>
				</ul>
			</div>

		</span>
		<div class="status">
			xxx님 안녕하세요
			<button id="logout">로그아웃</button>
		</div>
		<div class="ch_screen">
			<h1>스탬프 확인</h1>
			<hr />

			<div class="stamp_ck">
				<h1>적립금 총 xxxx원</h1>
				<br> ※1500원 이상 결제시 사용 가능※
			</div>

			<div class="exchange">
				<button id="btn_cg" type="submit">교환하기</button>
				<br>//10개 채울시 나타남
			</div>
		</div>
	</div>
