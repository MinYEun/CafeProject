<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="/coffee/css/mngr/mMainForm.css" rel="stylesheet" type="text/css">
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="main.js"></script>
<title>main.jsp</title>

	<!-- 관리자 메뉴 바 -->
	<div class="m_menu">
		<c:if test="${type == 0 }">
			<span class="menu">
				<div class="menulogo">
					<img width="250px" height="120px" alt="logo"
						src="/coffee/images/coffee.jpg" />
				</div>
				<div class="menu_mn">
					<ul>
						<li>메뉴관리</li>
						<ul>
							<li><button type="button" id="menu_add">추가</button>
							<li><button id="menu_md">수정</button>
							<li><button id="menu_del">삭제</button>
						</ul>
					</ul>
				</div>
				<div class="point_mn">
					<ul>
						<li>적립금관리
							<ul>
								<li><button id="point_sel">적립금 조회/삭제</button>
							</ul>
					</ul>
				</div>
				<div class="staff_mn">
					<ul>
						<li>직원관리
							<ul>
								<li><button id="staff_add">추가</button>
								<li><button id="staff_sel">조회</button>
								<li><button id="staff_sd">삭제</button>
							</ul>
					</ul>
				</div>
				<div class="cus_mn">
					<ul>
						<li>고객관리
							<ul>
								<li><button id="cus_add">추가</button>
								<li><button id="cus_sel">조회</button>
								<li><button id="cus_mod">수정</button>
								<li><button id="cus_del">삭제</button>
							</ul>
					</ul>
				</div>
				<div class="order_mn">
					<ul>
						<li>주문관리
							<ul>
								<li><button id="order_add">추가</button>
							</ul>
					</ul>
				</div>
				<div class="sal_mn">
					<ul>
						<li>매출관리
							<ul>
								<li><button id="sal_sel">조회</button>
							</ul>
					</ul>
				</div>
			</span>
			<div class="status">
				Cafe Hara
				<button id="logout" type="button">로그아웃</button>
				<div id="content" class="box2"></div>
			</div>
		</c:if>
	</div>

	<!-- 직원 메뉴 바 -->
	<div class="e_menu">
		<c:if test="${type == 1 }">
			<span class="menu">
				<div class="menulogo">
					<img width="250px" height="120px" alt="logo"
						src="/coffee/images/coffee.jpg" />
				</div>
				<div class="cus_mn">
					<ul>
						<li>고객관리
							<ul>
								<li><button id="cus_add">추가</button>
								<li><button id="cus_sel">조회</button>
								<li><button id="cus_mod">수정</button>
								<li><button id="cus_del">삭제</button>
							</ul>
					</ul>
				</div>
				<div class="order_mn">
					<ul>
						<li>주문관리
							<ul>
								<li><button id="order_add">추가</button>
							</ul>
					</ul>
				</div>
			</span>
			<div class="status">
				Cafe Hara
				<button id="logout" type="button">로그아웃</button>
				<div id="content" class="box2"></div>
			</div>
		</c:if>
	</div>
	<!-- 로그인 실패 -->
	<c:if test="${type == 2}">
		<jsp:forward page="/Login.jsp" />
	</c:if>

	<!-- cont 부분 -->
	<div class="cont">
		<c:if test="${not empty cont}">
			<jsp:include page="${cont}" />
		</c:if>
	</div>
