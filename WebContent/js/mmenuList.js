$(document).ready(function(){
//상단 메뉴바 show, hide
	$(".menulist_coff").show();
	$(".menulist_smo").hide();
	$(".menulist_ade").hide();
	$(".menulist_side").hide();
	
	$("#coffee").click(function(){
		alert("coffee")
		$(".menulist_coff").show();
		$(".menulist_smo").hide();
		$(".menulist_ade").hide();
		$(".menulist_side").hide();
	});
	$("#smoothie").click(function(){
		alert("s")
		$(".menulist_coff").hide();
		$(".menulist_smo").show();
		$(".menulist_ade").hide();
		$(".menulist_side").hide();
	});
	$("#ade").click(function(){
		alert("ade")
		$(".menulist_coff").hide();
		$(".menulist_smo").hide();
		$(".menulist_ade").show();
		$(".menulist_side").hide();
	});
	$("#side_menu").click(function(){
		alert("sd")
		$(".menulist_coff").hide();
		$(".menulist_smo").hide();
		$(".menulist_ade").hide();
		$(".menulist_side").show();
	});
	
	
	//메뉴 수정 버튼 눌렀을때
	$("#btn_mod").click(function(){
		alert($("#menu_name").val());
		alert($("#af_price").val());
		var query = {
				menu_name : $("#menu_name").val(),
				af_price : $("#af_price").val()
		};
		$.ajax({
			type : "post",
			url : "/coffee/mMenuMod.do",
			data : query,
			success : function(){
				window.location.href = "/coffee/mMenuCoff.do";
			}
		});
	});
	
	//메뉴 삭제 버튼 눌렀을때
	$("#btn_del").click(function(){
		alert($("input[name='check']:checked").val());
		alert("메뉴 삭제버튼 누름");
		var query = {
				menu_name : $("input[name='check']:checked").val()
				//그냥 체크한 name값을 확인해서 내가 원하는 체크박스를 불러옴
		};
		$.ajax({
			type : "post",
			url : "/coffee/mMenuDel.do",
			data : query,
			success : function(){
				window.location.href = "/coffee/mMenuCoff.do";
			}
		});
	});
	
	//결제 눌렀을때
	$("#btn_p").click(function(){
		alert($('#realtotal').val());
		var a =$('#realtotal').val();
		console.log(Number(a));
		console.log(typeof a);
		//결제 눌렀을 때
		var query= {		 
			cus_code : $("#cus_ph_num").val(),
		   	od_total_amt : a
		   	
		};			
			
		$.ajax({
			type : "post",
			url : "/coffee/mOrderCoffee.do",
			data : query,
			success : function(data) {	
				alert("추가 성공");	
				location.href="/coffee/mOrderCoffeemain.do";
			}
		});
	});
});


// 총 가격 구하기
function totalprice(){
	var totalprice = 0;
	for(var i=0; i<$(".or_menu").length; i++){
		var money = Number($(".or_menu").eq(i).find(" div:eq(3)").text()); // 각 메뉴의 총 가격
		totalprice = totalprice + money; // 전체 총 가격
	}
	$("#total").val(totalprice);
	$("#realtotal").val(totalprice);
} 


$(document).on("click",".num",function(){
    var num = $(this);
    var n = $(".num").index();
    
    
    var grand = num.parent().parent();   //조상선택
    var originalPrice = Number(grand.find(" div:eq(1)").text());   //제품가격을 선택
    var Price = originalPrice*num.val(); //제품 선택수만큼 가격을 곱함
    Number(grand.find(" div:eq(3)").text(Price));   //총 가격에 가격셋팅
    totalprice();
 });



	$(document).on("click", ".list_coff", function(){ 
    //상품리스트 눌렀을시 페이리스트 출력(커피)
		var tr = $(this).attr("class");
		var n = $(".list_coff").index(this);
		
		var name = $(".list_coff:eq("+n+") div:eq(1)").text();
		var price = $(".list_coff:eq("+n+") div:eq(2)").text();

	$("#list").append("<div class='or_menu'>" 
						+ "<div class='n'>" + name +"</div>"+ '&nbsp' 
			 			+ "<div class='p'>" + price +"</div>" + '&nbsp' 
			 			+ "<div class='q'>" + "<input type='number' class='num' name='quantity' value='1' min='1' max='100'  />" + "</div>" + '&nbsp' 
			 			+ "<div class='t'>"+ price + "</div>"
			 			+ "</div>" + "<br />");
	totalprice();
	
	});
	
	$(document).on("click", ".list_smo", function(){ 
	    //상품리스트 눌렀을시 페이리스트 출력(스무디)
			var tr = $(this).attr("class");
			var n = $(".list_smo").index(this);
			
			var name = $(".list_smo:eq("+n+") div:eq(1)").text();
			var price = $(".list_smo:eq("+n+") div:eq(2)").text();
		$("#list").append('<div class="or_menu">' 
							+ "<div class='n'>" + name +"</div>"+ '&nbsp' 
				 			+ "<div class='p'>" + price +"</div>" + '&nbsp' 
				 			+ "<div class='q'>" + "<input type='number' class='num' name='quantity' value='1' min='1' max='100'  />" + "</div>" + '&nbsp' 
				 			+ "<div class='t'>"+ price + "</div>"
				 			+ "</div>" + "<br/>");
		totalprice();
		
		});
	
	$(document).on("click", ".list_ade", function(){ 
	    //상품리스트 눌렀을시 페이리스트 출력(에이드)
			var tr = $(this).attr("class");
			var n = $(".list_ade").index(this);
			
			var name = $(".list_ade:eq("+n+") div:eq(1)").text();
			var price = $(".list_ade:eq("+n+") div:eq(2)").text();
		$("#list").append('<div class="or_menu">' 
							+ "<div class='n'>" + name +"</div>"+ '&nbsp' 
				 			+ "<div class='p'>" + price +"</div>" + '&nbsp' 
				 			+ "<div class='q'>" + "<input type='number' class='num' name='quantity' value='1' min='1' max='100'  />" + "</div>" + '&nbsp' 
				 			+ "<div class='t'>"+ price + "</div>"
				 			+ "</div>" + "<br/>");
		totalprice();
		
		});
	
	$(document).on("click", ".list_side", function(){ 
	    //상품리스트 눌렀을시 페이리스트 출력(사이드메뉴)
			var tr = $(this).attr("class");
			var n = $(".list_side").index(this);
			
			var name = $(".list_side:eq("+n+") div:eq(1)").text();
			var price = $(".list_side:eq("+n+") div:eq(2)").text();
		$("#list").append('<div class="or_menu">' 
							+ "<div class='n'>" + name +"</div>"+ '&nbsp' 
				 			+ "<div class='p'>" + price +"</div>" + '&nbsp' 
				 			+ "<div class='q'>" + "<input type='number' class='num' name='quantity' value='1' min='0' max='100'  />" + "</div>" + '&nbsp' 
				 			+ "<div class='t'>"+ price + "</div>"
				 			+ "</div>" + "<br/>");
		totalprice();
		
		});
	
	$(document).on("click", "#cus_poi", function(){
		var total = $("#total").val();
		//조회 눌렀을 때
		window.open("/coffee/mngr/mCusPoSel.jsp?sprice="+total, "newWindow" ,"width=600, height=500, resizable=yes");
	});

	function realprice(){
			var realprice = 0;
		    var totalprice = $("#total").val();
		    var usePoint = $("#use_po").val();
		    var realprice = Number(totalprice) - Number(usePoint);
		    console.log(realprice);
		    console.log(usePoint);
		     $("#realtotal").val(realprice);

	};
		
	




