<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="coffee.bean.MngrDBBean, java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0" />
<script src="/coffee/js/mmenuList.js"></script>
<link href="/coffee/css/mngr/mMainForm.css" rel="stylesheet"
	type="text/css">


<c:if test="${not empty sessionScope.id }">
	<div class="ordercoff">
		<div class="menu">
			<div class="menu_md">
				<h1>메뉴관리 ─ 삭제</h1>
				<hr />
				<div id="menu_class">
					<!-- 상단 베뉴 바 -->
					<button id="coffee">COFFEE</button>
					<button id="smoothie">SMOOTHIE</button>
					<button id="ade">ADE</button>
					<button id="side_menu">SIDE MENU</button>
				</div>

				<div class="list_wrap">
					<c:if test="${menu != null }">
						<c:forEach var="m" items="${menu}">
							<c:if test="${m.class_code == 001}">
							
						<!-- 메뉴 - 커피-->
						<div class="menulist_coff">
							<button class="list_coff">
								<div class="img">
									<img src="/coffee/images/${m.img}" />
								</div>
								<div class="menu_name">${m.menu_name}</div>
								<div class="price">${m.price}</div>
								<input class="check" type="radio"
								name="check" id="radio_id" value="${m.menu_name}">
							</button>
						</div>
						</c:if>
					</c:forEach>

						<!-- 메뉴 - 스무디 -->
						<c:forEach var="m" items="${menu}">
							<c:if test="${m.class_code == 002}">
								<div class="menulist_smo">
									<button id="list_smo">
										<div class="img">
											<img src="/coffee/images/${m.img}" />
										</div>
										<div class="menu_name">${m.menu_name}</div>
										<div class="price">${m.price}</div>
								<input class="check" type="radio"
								name="check" id="radio_id" value="${m.menu_name}">
									</button>
								</div>
							</c:if>
						</c:forEach>

						<!-- 메뉴 - 에이드 -->
						<c:forEach var="m" items="${menu}">
							<c:if test="${m.class_code == 003}">
								<div class="menulist_ade">
									<button id="list_ade">
										<div class="img">
											<img src="/coffee/images/${m.img}" />
										</div>
										<div class="menu_name">${m.menu_name}</div>
										<div class="price">${m.price}</div>
								<input class="check" type="radio"
								name="check" id="radio_id">
									</button>
								</div>
							</c:if>
						</c:forEach>

						<!-- 메뉴 - 사이드 -->
						<c:forEach var="m" items="${menu}">
							<c:if test="${m.class_code == 004}">
								<div class="menulist_side">
									<button id="list_side">
										<div class="img">
											<img src="/coffee/images/${m.img}" />
										</div>
										<div class="menu_name">${m.menu_name}</div>
										<div class="price">${m.price}</div>
								<input class="check" type="radio"
								name="check" id="radio_id">
									</button>
								</div>
							</c:if>
						</c:forEach>
					</c:if>
				</div>
				<br>
			</div>
				<div class="del">
					<button id="btn_del" name="delete">삭제</button>
				</div>
		</div>
	</div>
</c:if>