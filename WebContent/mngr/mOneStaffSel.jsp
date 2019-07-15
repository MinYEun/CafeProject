<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  .stf_sd{
  	width: 800px;
  	transform : translateX(60%);
  	text-align: center;
  }
  #staff{
 	height : 50%;
 	transform : translateY(20%);
  }
</style>
<div class="stf_sd">
	<div id="staff">
		<div id="staff_sel">
			<table id="list">
				<tr>
					<th></th>
					<th>직원 코드</th>
					<th>직원 이름</th>
					<th>직원 휴대폰</th>
				</tr>
				<c:forEach var="e" items="${sessionScope.one_stf}">
					<tr>
						<td class="elist">
						<td class="elist">${e.stf_code}</td>
						<td class="elist">${e.name}</td>
						<td class="elist">${e.ph_num}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</div>