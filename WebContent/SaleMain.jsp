<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>매출 페이지</title>
<!-- ▼ morris.js 차트를 사용하기 위한 CDN ▼-->
<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
<!-- ▲ morris.js 차트를 사용하기 위한 CDN ▲ 필요시 파일 import방식으로 바꿔도 될 듯-->

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>


<script type="text/javascript">
	$(document).ready(function() {
		var slist = '${slist}';

		var json = JSON.parse('${slist}');
		console.log(json);

		// line차트를 그리는 부분
		/* new Morris.Line({
			//↓---필수 값(무조건 있어야 함)----↓
			element : 'lineChart', //div id값이 lineChart인 곳에 차트를 그린다.
			data : json,
			xkey : 'month',
			ykeys : [ 'totalSales' ],
			labels : [ '총 매출' ],
			//↑---필수 값(무조건 있어야 함)----↑
			lineColors : [ 'red' ],
			pointSize : 10
		}); */

		// bar차트를 그리는 부분
		new Morris.Bar({
			//↓---필수 값(무조건 있어야 함)----↓
			element : 'barChart', //div id값이 barChart인 곳에 차트를 그린다.
			data : json,
			xkey : 'month',
			ykeys : [ 'totalSales' ],
			labels : [ '총 매출' ],
			//↑---필수 값(무조건 있어야 함)----↑
			barColors : [ '#D8C5BF' ]
		});

	});
</script>

<!-- 차트 스타일 -->
<style>
h1 {
	margin-top : 0px;
	margin-bottom : 100px;
	color: #000000;
}
#main{
	width: 1500px;
	height: 980px;
	transform: translatex(20%);
	display: inline-block;
	margin-top: -9px;
	/* border: 1px solid black; */
	
}

.bar_chart {
	transform: translatey(30%);
}
</style>
</head>
<body>
	<!-- <h1>라인 차트</h1>
	<div id="lineChart" style="height: 350px;"></div> -->
	<div id="main">
	<div class="bar_chart">
		<h1>월 매출 관리</h1>
		<div id="barChart" style="height: 350px;"></div>
	</div>
	</div>
</body>
</html>