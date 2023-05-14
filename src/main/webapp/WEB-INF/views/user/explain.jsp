<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>소개</title>

<link rel="shortcut icon" href="/resources/image/favicon/favicon.ico" />
<link rel="stylesheet" href="/resources/css/explain.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
	<div class="layout">
		<div class="banner">
			<jsp:include page="../header.jsp"></jsp:include>
			<div class="inner_banner">
				<h2 style="font-size : 54px; margin-top: 100px;">소개</h2>
			</div>
		</div>
			<div class="container">
				<h2>AgeTalk</h2>
				
				<h3>청년과 노년이 함께하는 문화 교류 플랫폼</h3>
				
				<p>우리는 어르신과 청년이 함께하는 대화를 촉진하고, 서로의 세대에 대한 이해와 소통을 높이는 프로젝트를 기획하고 있습니다.<br/> 이 프로젝트는 어르신들이 음성을 녹음해 서버로 보내면, 청년들은 이를 텍스트로 변환하여 채팅 메시지로 확인할 수 있습니다.<br/> 이와 동시에, 청년들이 보낸 텍스트 메시지는 음성으로 변환되어 어르신들에게 전달됩니다.</p>
			</div>
			
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>
