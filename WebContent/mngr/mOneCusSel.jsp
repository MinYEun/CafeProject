<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8">

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

.cus_sd {
	width: 800px;
	transform: translateX(60%);
	text-align: center;
}

#cus {
	height: 100px;
	transform: translateY(20%);
}

.cus_sel {
	height: 400px;
}
</style>
<div class="cus_sd">
	<div id="cus">
		<div id="cus_sel">
			<table id="list">
				<tr>
					<th></th>
					<th>고객 번호</th>
					<th>고객 이름</th>
					<th>고객 포인트</th>
				</tr>
				<c:forEach var="e" items="${sessionScope.one_cus}">
					<tr>
						<td class="elist">
						<td class="elist">${e.cus_code}</td>
						<td class="elist">${e.cus_name}</td>
						<td class="elist">${e.cus_point}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</div>