<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>관리자 공지사항</title>

<link rel="shortcut icon" href="/resources/image/favicon/favicon.ico" />

<link rel="stylesheet" href="/resources/css/notice.css" />
<link rel="stylesheet" href="/resources/css/footer.css" />
<link rel="stylesheet" href="/resources/css/header.css" />
<link rel="stylesheet" href="/resources/css/pagenation.css" />
<link rel="stylesheet" href="/resources/css/index.css" />
</head>

<body>
	<div class="layout">
		<div class="banner">
			<header>
				<div class="logo_wrap">
					<a href="/"><img
						src="/resources/image/agetalk_logo.png" alt="logo" /></a>
				</div>
				<div class="menu_wrap">
					<ul class="menu_list">
						<li><a href="">소개</a></li>
						<li><a href="">채팅하기</a></li>
						<li><a href="">고객센터</a></li>
					</ul>
				</div>
				<div class="login_wrap">
					<a href="login">관리자</a>
				</div>
			</header>
			<div class="inner_banner">
				<h2>관리자</h2>
				<p>Admin</p>
			</div>
		</div>
		<section class="container">
			<div class="title">
				<h2>공지사항</h2>
			</div>
		
			<ul class="bbsList">
				<!-- 리스트 시작 -->
				<c:if test=""></c:if>
				<li><span class="date"> <i>30</i> 2023.04
				</span> <a href="notice_detail" class="subject"> 2023 지원
						프로그램 연계 협약 </a></li>
				<!-- 리스트 종료 -->
			</ul>
			<div class="btn_area">
				<a href="notice_insert" class="button"> <span
					class="btn_write">글쓰기</span>
				</a>
			</div>
			<!-- page -->
			<div class="pagenation_wrap">
				<ul class="pagenation">
					<li class="page"><a href="">&lt;&lt;</a></li>
					<li class="page"><a href="">&lt;</a></li>
					<li class="page"><a class="active2" href="">1</a></li>
					<li class="page"><a href="">2</a></li>
					<li class="page"><a href="">3</a></li>
					<li class="page"><a href="">4</a></li>
					<li class="page"><a href="">5</a></li>
					<li class="page"><a href="">&gt;</a></li>
					<li class="page"><a href="">&gt;&gt;</a></li>
				</ul>
			</div>
		</section>
	</div>
	<footer>
		<div class="footer_wrap">
			<div class="footer_logo_wrap">
				<img src="/resources/image/footer_logo.png" alt="footer_logo" />
			</div>
			<div class="footer_text_wrap">
				<p>Copyright 2023. AgeTalk All right reserved.</p>
			</div>
		</div>
	</footer>
</body>
</html>
