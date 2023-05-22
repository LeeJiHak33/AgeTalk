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
<link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css" />
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
	<div class="layout">
		<div class="banner">
			<jsp:include page="header.jsp"></jsp:include>
			<div class="inner_banner">
				<h2 style="font-size : 54px; margin-top: 100px;">소개</h2>
				<p>Introduce</p>
			</div>
		</div>
			<div class="container" style="max-width: 1400px;">
				<p class="about">ABOUT US</p>
				<h3>소통을 통해 새로운 경험을 선사합니다</h3>
				
				<div class="introduce">
					<div class="introduce_div">
						<div class="introduce_content">
							<p>서로 다른 연령대의 사람들이 대화를 통해 서로를 이해하고 소통하며, 선입견이나</br> 편견 없는 대화를 통해 상호 존중하는 것이 저희 프로젝트의 목적입니다.</p>
						</div>
					</div>
				</div>
				
				
				
				<div class="content_div">
					<p>저희는 노년층과 청년층이 함께하는 대화를 촉진하고, 서로의 세대에 대한 이해와 소통을 높이는 프로젝트를 개발하고 있습니다.<br/> 어르신들이 기기를 통해 음성을 녹음한 후 서버로 보내면, 청년들은 이를 텍스트로 변환하여 채팅 메시지로 확인할 수 있습니다.<br/> 이와 동시에, 청년들이 보낸 텍스트 메시지는 음성으로 변환되어 어르신들에게 전달됩니다.</p>
					<p id="last_content" data-aos="zoom-in-up" data-aos-duration="1000">AgeTalk에서는 새로운 이야기와 만남이 기다리고 있습니다. 우리 함께 시작해볼까요?</p>
				</div>
			</div>
			<script>
       			 AOS.init();
     		</script>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>
