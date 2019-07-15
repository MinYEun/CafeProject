<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<link rel="stylesheet" href="/coffee/css/mngr/mMenuAdd.css"/>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="/coffee/js/mMenu.js"></script>

<script>
 	$(document).ready(function(){ 
		$("#uplaod").on("change", loadFile); 
 	});
	function loadFile(event){
 		if(event.files && event.files[0]){ 
			var reader = new FileReader(); 
 			reader.onload = function(e) { 
 				$('#menu_img').attr('src', e.target.result);
 			} 
 			reader.readAsDataURL(event.files[0]);
 		} 
 	} 
</script>

	<div class="menu_add">
	<h1>메뉴관리　─　추가</h1>
	<hr/>
	<div class="qq">
		<div id="menu_image">
			<img id="menu_img" src="http://placehold.it/240x300" ></img>
		</div>
	<span id="file_inf">
		<select id="inf">
			<option value="001">COFFEE</option>
			<option value="002">SMOOTHEI</option>
			<option value="003">ADE</option>
			<option value="004">SIDE MENU</option>
		</select>
		<br/>
		<br/>
       	<input id="menu_name" name="menu_name" type="text" style="width:200px;
        		height:20px;" maxlength="15" placeholder="메뉴 이름">
        <br/>
		<br/>
		
        <input id="menu_pr" name="menu_pr" type="text" style="width:200px;
        height:20px;" maxlength="5" placeholder="메뉴 가격">
        <br/>
		<br/>
	</span>
	<div id="file_up">
		<input type="file" id="upload" multiple accept="image/*" onchange="loadFile(this);" ></input>
		<input type="submit" id="file_add" value="메뉴추가" />
	</div>
	</div>
</div>
		