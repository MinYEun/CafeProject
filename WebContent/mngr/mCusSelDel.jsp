<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/coffee/css/mngr/mStaffSelDel.css" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="/coffee/mngr/mCusDel.js"></script>

<!-- 테이블 스타일 -->
<style>
table {
    width: 50%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
  }
</style>


<meta charset="UTF-8">
<div class="stf_sd">
	<h1>고객관리 ─ 삭제</h1>
	<hr />
	<div id="cus">
		<div id="cus_sel">
			<table id="list">
				<tr>
					<th></th>
					<th>고객 코드</th>
					<th>고객 이름</th>
					<th>고객 포인트</th>
				</tr>
				<c:forEach var="e" items="${sessionScope.CusList}">
					<tr>
						<td class="elist"><input class="check" type="radio"
							name="check" id="radio_id" value="${e.cus_code}"></td>
						<td class="elist">${e.cus_code}</td>
						<td class="elist">${e.cus_name}</td>
						<td class="elist">${e.cus_point}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	<div class="del">
		<button id="delete" name="delete">삭제</button>
	</div>
</div>