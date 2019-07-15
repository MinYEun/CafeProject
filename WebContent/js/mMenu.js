$(document).ready(function() {
	$("#file_add").click(function() {

		var formData = new FormData();
		formData.append("menu_img", $("#upload")[0].files[0]);
		formData.append("inf", $("#inf option:selected").val());
		formData.append("menu_name", $("#menu_name").val());
		formData.append("menu_pr", $("#menu_pr").val());

		$.ajax({
			type : "post",
			url : "/coffee/mMenuInsertPro.do",
			data : formData,
			enctype : 'multipart/form-data',
			processData : false,
			contentType : false,
			dataType : 'text',
			success : function(data) {
				window.location.href = "/coffee/mMenuAdd.do";
			}
		});
	});
});