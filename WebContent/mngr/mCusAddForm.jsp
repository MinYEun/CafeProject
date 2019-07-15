<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link href="/coffee/css/mngr/mCusAddForm.css" rel="stylesheet"
	type="text/css">
<script src="/coffee/mngr/mCusAddForm.js"></script>

	<div class="cus_add">
		<h1>고객관리 ─ 추가</h1>
		<hr />
		<div class="inner">
			<table height="200px" align="center">
				<tr>
					<td width="300px">
						<label for="phone">핸드폰</label>
							<input id="phone" name="phone" type="text" size="25" maxlength="50"
								placeholder=" PHONE"><br /><br />
						<label for="name">이름</label>
						<input id="name" name="name" type="text" size="25"
							placeholder=" NAME" maxlength="16">
					</td>

					<td width="150px" margin-right="40px" align="left">
						<button id="add">추가</button>
					</td>
				</tr>
			</table>
		</div>
	</div>