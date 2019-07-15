<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="/coffee/css/mngr/mPoint.css" />
<script src="/coffee/CustomerMain.js"></script>



<div class="poi_select">
	<h1>적립금 조회</h1>
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
	<div class="cus_sel">
		<jsp:include page="/OneCustomerPro.jsp" />
	</div>
</c:if>