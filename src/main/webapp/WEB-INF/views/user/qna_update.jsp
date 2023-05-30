<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Q&A변경</title>

<link rel="shortcut icon" href="/resources/image/favicon/favicon.ico" />

<link rel="stylesheet" href="/resources/css/qna_insert.css" />
<link rel="stylesheet" href="/resources/css/index.css" />
<link rel="stylesheet" href="/resources/css/summernote/summernote-lite.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
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
		});
		
		const btn = document.getElementById('insert');
		const form = document.insert_form;
		
		 btn.addEventListener('click', function() {

			 event.preventDefault();
			 
			  if (form.title.value == "") {
			    alert("제목을 입력해 주세요");
			    form.title.focus();
			    return;
			  }
			  
			  if (form.content.value == "") {
			    alert("내용을 입력해 주세요");
			    form.content.focus();
			    return;
			  }
			  
			  	alert("수정이 완료됐습니다.");
				form.submit();
				return;
	
		 });
	});
</script>
</head>

<body>
	<div class="layout">
		<div class="banner">
			<jsp:include page="header.jsp"></jsp:include>
			<div class="inner_banner">
				<h2>고객지원</h2>
				<p>Customer Support</p>
			</div>
		</div>

		<div class="title">
			<h2>Q&A변경</h2>
		</div>
		<form method="post">
		<div class="edit">
			<div class="insert_title">
				<input name="title" type="text" value="${item.title}" />
			</div>
			
				<textarea id="summernote" name="content">${item.content}</textarea>
	
		</div>
		<div class="btn_area">
			<button class="button" style="border: none; font-size: 16px;" id="insert"> <span>변경</span></button>
			
			<span class="space"></span>
			<a href="../qna" class="button"> <span>취소</span>
			</a>
		</div>
		</form>
	</div>
	
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>
