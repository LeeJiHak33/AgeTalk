<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Q&A</title>

<link rel="shortcut icon" href="/resources/image/favicon/favicon.ico" />

<link rel="stylesheet" href="/resources/css/qna_detail.css" />
<link rel="stylesheet" href="/resources/footer.css" />
<link rel="stylesheet" href="/resources/header.css" />
<link rel="stylesheet" href="/resources/index.css" />
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
				<h2>Q&A</h2>
			</div>

			<h3 class="bbsTitle">안녕하세요</h3>
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
						<td>2023년 04월 xx일</td>
						<th scope="row" data-view="count">조회수</th>
						<td>2000회</td>
					</tr>
					<tr>
						<td colspan="4" class="conts">
							<div>홍소망이 자꾸 때립니다.</div>
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
						<th scope="row" style="display: flex; align-items: center"><span
							class="icon"></span> <span>관리자</span></th>
						<td><a> 같이 홍소망을 때리세요 </a></td>
					</tr>
				</tbody>
			</table>
			<div class="btn_area">
				<a href="qna" class="button"> <span>목록</span>
				</a> <span class="space"></span> <a href="qna_update"
					class="button"> <span>수정하기</span>
				</a>
			</div>
		</section>
	</div>
</body>
</html>
