<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="/coffee/mngr/mCusMod.js"></script>

<!-- 테이블 스타일 -->
<style>
table {
    width: 70%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
  }
  .cus_mod {
	width: 1500px;
	height: 50%;;
	transform: translatex(20%);
	display: inline-block;
	background-color: white;
	margin-top: -9px;
}
</style>
<div class="cus_mod">
	<h1>고객관리 ─ 수정</h1>
	<hr />
	<div id="cus">
		<div id="cus_mod">
			<table id="list">
				<tr>
					<th></th>
					<th>핸드폰 번호</th>
					<th>고객 이름</th>
					<th>고객 포인트</th>
				</tr>
				<c:forEach var="e" items="${sessionScope.clist}">
					<tr>
						<td class="elist"></td>
						<td class="elist">${e.cus_code}</td>
						<td class="elist">${e.cus_name}</td>
						<td class="elist">${e.cus_point}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div><br><br>
	<label for="phone">핸드폰 번호</label>
	<input id="phone" name="phone" type="text" size="25" maxlength="50" placeholder=" PHONE">
	
	<label for="af_phone">수정 번호</label>
	<input id="af_phone" name="name"type="text" size="25" placeholder=" NAME" maxlength="16">

	<div id="btn">
		<button id="btn_mod">수정</button>
	</div>
</div>