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

.point_sd {
	width: 650px;
	transform: translateX(60%);
	text-align: center;
}

#point {
	height: 100px;
	transform: translateY(20%);
}

.point_sel {
	height: 400px;
}
</style>
<div class="point_sd">
	<div id="point">
		<div id="point_sel">
			<table id="list">
				<tr>
					<th></th>
					<th>핸드폰 번호</th>
					<th>고객 포인트</th>
				</tr>
				<c:forEach var="e" items="${sessionScope.one_point}">
					<tr>
						<td class="elist">
						<td class="elist">${e.cus_code}</td>
						<td class="elist">${e.cus_point}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</div>