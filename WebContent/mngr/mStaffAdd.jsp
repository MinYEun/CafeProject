<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link rel="stylesheet" href="/coffee/css/mngr/mStaffAdd.css"/>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="/coffee/mngr/mStaffAdd.js"></script>

		<div class="staff_add">
			<h1>직원관리　　─　　추가</h1>
			<hr/>
			<div id="staff">
				<div id="staff_inf">
					Staff Number <input type="text" id="stf_num" name="stf_num" style="width:200px; height:20px">
					Name <input type="text" id="stf_name" name="stf_name" style="width:200px; height:20px">
					<br />
					Phone <input type="text" id="stf_ph" name="stf_ph" style="width:200px; height:20px">
					PassWord <input type="text" id="stf_pw" name="stf_pw" style="width:200px; height:20px">
				</div>
				<input type="button" class="send" id="add" value="add" />
			</div>
			
		</div>