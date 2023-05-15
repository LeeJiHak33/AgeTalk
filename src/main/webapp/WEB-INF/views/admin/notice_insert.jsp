<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>공지사항 작성</title>

<link rel="shortcut icon" href="/resources/image/favicon/favicon.ico" />

<link rel="stylesheet" href="/resources/css/qna_insert.css" />
<link rel="stylesheet" href="/resources/footer.css" />
<link rel="stylesheet" href="/resources/header.css" />
<link rel="stylesheet" href="/resources/index.css" />
<link rel="stylesheet" href="/resources/css/summernote/summernote-lite.css" />
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="/resources/js/summernote/summernote-lite.js"></script>
<script src="/resources/js/summernote/lang/summernote-ko-KR.js"></script>

<script>
	$(document).ready(function() {
		$("#summernote").summernote({
			height : 500,
			minHeight : null,
			maxHeight : null,
			focus : true,
			lang : "ko-KR",
			placeholder : "최대 2048자까지 쓸 수 있습니다",
		});
	});
</script>
</head>

<body>
	<div class="layout">
		<div class="banner">
			<header>
				<div class="logo_wrap">
					<a href="/"><img src="/resources/image/agetalk_logo.png"
						alt="logo" /></a>
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

		<div class="title">
			<h2>공지사항 작성</h2>
		</div>
		<div class="edit">
			<div class="insert_title">
				<input type="text" placeholder="제목을 입력하세요" />
			</div>
			<form method="post">
				<textarea id="summernote" name="editor"></textarea>
			</form>
		</div>
		<div class="btn_area">
			<a href="" class="button"> <span>등록</span>
			</a> <span class="space"></span> <a href="notice"
				class="button"> <span>취소</span>
			</a>
		</div>
	</div>
</body>
</html>
