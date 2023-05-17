<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>공지사항 상세페이지</title>

<link rel="shortcut icon" href="/resources/image/favicon/favicon.ico" />
<link rel="stylesheet" href="/resources/css/notice_detail.css" />
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
					<a href="login">로그인 &nbsp; | &nbsp; 회원가입</a>
				</div>
			</header>
			<div class="inner_banner">
				<h2>고객지원</h2>
				<p>Customer Support</p>
			</div>
		</div>

		<section class="container">
			<div class="title">
				<h2>공지사항</h2>
			</div>

			<h3 class="bbsTitle">2023 지원 프로그램 연계 협약</h3>
			<table class="bbsView">
				<colgroup>
					<col data-view="th" style="width: 25%" />
					<col data-view="td" style="width: 25%" />
					<col data-view="th" style="width: 25%" />
					<col data-view="td" style="width: 25%" />
				</colgroup>
				<tbody>
					<tr>
						<th scope="row" data-view="date">작성일</th>
						<td></td>
						<th scope="row" data-view="count">조회수</th>
						<td>${item.view }</td>
					</tr>
					<tr>
						<td colspan="4" class="conts">
							<div>${item.content}</div>
						</td>
					</tr>
				</tbody>
			</table>
			<table class="bbsView page">
				<colgroup>
					<col data-view="th" style="width: 15%" />
					<col data-view="td" style="width: 85%" />
				</colgroup>
				<tbody>
					<tr>
						<th scope="row">이전글</th>
						<td><a> 이전 공지사항 </a></td>
					</tr>
					<tr>
						<th scope="row">다음글</th>
						<td><a> 다음 공지사항 </a></td>
					</tr>
				</tbody>
			</table>
			<div class="btn_area">
				<a href="../notice" class="button"> <span>목록</span>
				</a>
			</div>
		</section>
	</div>
</body>
</html>
