<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="coffee.bean.MngrDBBean, java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="/coffee/js/mmenuList.js"></script>
<link href="/coffee/css/mngr/mMainForm.css" rel="stylesheet"
	type="text/css">

<c:if test="${not empty sessionScope.id }">
	<div class="ordercoff">
		<div class="menu">
			<div class="menu_md">
				<h1>주문관리 ─ 추가</h1>
				<hr />
				<div id="menu_class">
					<button id="coffee">COFFEE</button>
					<button id="smoothie">SMOOTHIE</button>
					<button id="ade">ADE</button>
					<button id="side_menu">SIDE MENU</button>
				</div>
				<div class="list_wrap">
					<c:if test="${menu != null }">
						<c:forEach var="m" items="${menu}">
							<c:if test="${m.class_code == 001}">
								<div class="menulist_coff">
									<button class="list_coff">
										<%--								<div class="menu_code">${m.menu_code}</div> --%>
										<%-- 								<div class="class_code">${m.class_code}</div> --%>
										<div class="img">
											<img src="/coffee/images/${m.img}" />
										</div>
										<div class="menu_name">${m.menu_name}</div>
										<div class="price">${m.price}</div>
									</button>
								</div>
							</c:if>
						</c:forEach>

						<c:forEach var="m" items="${menu}">
							<c:if test="${m.class_code == 002}">
								<div class="menulist_smo">
									<button class="list_smo">
										<%-- 								<div class="menu_code">${m.menu_code}</div> --%>
										<%-- 								<div class="class_code">${m.class_code}</div> --%>
										<div class="img">
											<img src="/coffee/images/${m.img}" />
										</div>
										<div class="menu_name">${m.menu_name}</div>
										<div class="price">${m.price}</div>
									</button>
								</div>
							</c:if>
						</c:forEach>

						<c:forEach var="m" items="${menu}">
							<c:if test="${m.class_code == 003}">
								<div class="menulist_ade">
									<button class="list_ade">
										<%-- 								<div class="menu_code">${m.menu_code}</div> --%>
										<%-- 								<div class="class_code">${m.class_code}</div> --%>
										<div class="img">
											<img src="/coffee/images/${m.img}" />
										</div>
										<div class="menu_name">${m.menu_name}</div>
										<div class="price">${m.price}</div>
									</button>
								</div>
							</c:if>
						</c:forEach>

						<c:forEach var="m" items="${menu}">
							<c:if test="${m.class_code == 004}">
								<div class="menulist_side">
									<button class="list_side">
										<%-- 								<div class="menu_code">${m.menu_code}</div> --%>
										<%-- 								<div class="class_code">${m.class_code}</div> --%>
										<div class="img">
											<img src="/coffee/images/${m.img}" />
										</div>
										<div class="menu_name">${m.menu_name}</div>
										<div class="price">${m.price}</div>
									</button>
								</div>
							</c:if>
						</c:forEach>
					</c:if>
				</div>
				<br>
			</div>
		</div>
		<div class="order_list">
			<div id="list">
				주문 목록<br>
			</div>
			<div id="price">
				 총 금액
				<input type="text" id="total" />
			</div>
			
			<div id="point_use">
				차감 포인트
				<input type="text" id="use_po" />
			</div>
			
			<div id="cus">
				<button id="cus_poi">조회</button>
			</div>
			
			<div id="real">
				결제 금액
				<input type="text" id="realtotal" />
			</div>
			<div id="cus_num">
				고객 번호
				<input type="text" id="cus_ph_num" />
			</div>
			<div id="etc">
				<button id="btn_p">결제</button>
			</div>
		</div>
	</div>
</c:if>