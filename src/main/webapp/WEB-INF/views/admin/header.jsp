<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<link rel="stylesheet" href="/resources/css/header.css" />
<link rel="stylesheet" href="/resources/css/index.css" />
<style type="text/css">
	header .menu_wrap .menu_list{
		width:480px;
	}
	header .menu_wrap .menu_list li{
		width: 130px;
	}
</style>
</head>
<body>
	<header>
		<div class="logo_wrap">
			<a href="../admin/work_list"><img src="/resources/image/agetalk_logo.png" alt="logo" /></a>
		</div>
		<div class="menu_wrap">
			<ul class="menu_list">
				<!--복지사 관리 페이지-->
				<li><a href="../admin/work_list">복지사 관리</a></li>
				<!--일반 회원 신고 게시판 페이지-->
				<li><a href="../admin/report_list">신고 관리</a></li>
				<!--공지사항 & Q&A 관리 페이지 페이지-->
				<li>
					<a href="../admin/notice">고객지원 관리</a>
				</li>
				
				
			</ul>
		</div>
		<div class="login_wrap">
			<a href="">관리자</a>
		</div>
	</header>
</body>
</html>