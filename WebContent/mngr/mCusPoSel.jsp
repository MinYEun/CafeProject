<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.json.simple.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="/coffee/js/mPointSel.js"></script>
<link rel="stylesheet" href="/coffee/css/mngr/mCusPoSel.css" />


<div class="outer">
	<table class="cus_sel">
		<tr>
			<td>고객 코드</td>
			<td><input type="text" id="cus" /></td>
			<td>
				<button id="select">조회</button>
			</td>
		</tr>
		<tr>
			<td>현재 적립금</td>
			<td><input type="text" id="point"
				value="${sessionScope.selectPoint}" /></td>
		</tr>
		<tr>
			<td>사용할 적립금</td>
			<td><input type="text" id="use_point" /></td>
			<td>
				<button id="use">사용</button>
			</td>
		</tr>
	</table>
</div>