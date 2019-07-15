<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link href="/coffee/css/staff/sCusDel.css" rel="stylesheet" type="text/css">

<script>
	var redata = prompt("고객 번호를 입력하세요." ,"Customer Number");
</script>
	
		<div class="cus_del">
			<h1>고객관리 ─ 조회/삭제</h1>
			<hr />

			<div id="logo_img">
				<img src="/coffee/images/coffee.jpg" alt="logo" width="350px" height="200px" />
			</div>

			<div class="list_del">
				Phone <input type="text" id="stf_num" name="stf_num" style="width:150px; height:25px">
				Name <input type="text" id="stf_name" name="stf_name" style="width:150px; height:25px">
			</div>	
				<div class="btn_del">
					<button type="submit">삭제</button>
				</div>
		</div>
	</div>
</body>
</html>