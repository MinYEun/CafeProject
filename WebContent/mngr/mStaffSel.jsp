<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8">
<link href="/coffee/css/mngr/mCusSel.css"
rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="/coffee/mngr/mStaffSel.js"></script>

<div class="stf_sel">
	<h1>직원관리 ─ 조회</h1>
	<hr />
	Staff_Code<input type="text" id="stf_code" /><br>
	<button id="btn_sel">조회</button>
</div>

<c:if test="${not empty sessionScope.isSearch}">
	<div class="stf_one_sel">
		<jsp:include page="/mngr/mOneStaffSel.jsp" />
	</div>
</c:if>