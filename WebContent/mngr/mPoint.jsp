<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link rel="stylesheet" href="/coffee/css/mngr/mPoint.css" />
<script src="/coffee/mngr/mPoint.js"></script>

<div class="poi_sel">
	<h1>적립금관리 ─ 조회</h1>
	<hr />
	<div id="point">
		<div id="poi_inf">
			핸드폰 번호 <input type="text" id="cus_code" name="cus_code"
				style="width: 150px; height: 20px"> <br />
			<div id="btn">
				<button id="btn_point">조회</button>
			</div>
		</div>

	</div>
</div>

<c:if test="${not empty sessionScope.isSearch}">
	<div class="cus_one_sel">
		<jsp:include page="/mngr/mOnePoint.jsp" />
	</div>
</c:if>