<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Q&A작성</title>

<link rel="shortcut icon" href="/resources/image/favicon/favicon.ico" />

<link rel="stylesheet" href="/resources/css/main.css">
		<link rel="stylesheet" href="/resources/css/list.css" />
	<link rel="stylesheet" href="/resources/css/pagenation.css">
<link rel="stylesheet" href="/resources/css/index.css" />
<link rel="stylesheet" href="/resources/css/report_insert.css" />
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
			placeholder : "신고할 내용을 적어주세요.",
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
			  
			  	alert("등록이 완료됐습니다.");
				form.submit();
				return;
	
		 });
	});

</script>
</head>

<body>		<div class="tle">
			<div class="sub_image">

			<jsp:include page="header.jsp"></jsp:include>
				

				<h1>사용자 관리</h1>
			</div>	
		</div>
		<div class="sub_tle">


		
		<form method="post" name="insert_form">
		<div class="edit">
			<div class="insert_title">
				<input name="title" type="text" placeholder="제목을 입력하세요" />
				
			</div>
				<textarea id="summernote" name="content"></textarea>
		</div>
		<div class="btn_area">
			<button class="button" style="border: none; font-size: 16px;" id="insert"> <span>등록</span></button>
			
			<span class="space"></span>
			<a href="managelist" class="button"> <span>취소</span>
			</a>
		</div>
		</form>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>
