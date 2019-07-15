<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="/coffee/css/mngr/mCusDel.css" rel="stylesheet"
	type="text/css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="/coffee/CustomerMain.js"></script>

<div class="cus_sel">
	<h1>고객관리 ─ 조회</h1>
	<hr />
	<div class="list_sel">
		Phone <input type="text" id="cus_code" name="cus_code"
			style="width: 150px; height: 25px">
	</div>
	<div class="btn_sel">
		<button id="btn_sel">조회</button>
	</div>
</div>

<c:if test="${not empty sessionScope.isSearch}">
	<div class="cus_one_sel">
		<jsp:include page="/mngr/mOneCusSel.jsp" />
	</div>
</c:if>