<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>AgeTalk</title>

<!--파비콘-->
<link rel="shortcut icon" href="/resources/image/favicon/favicon.ico" />

<link rel="stylesheet" href="/resources/css/main.css" />
<link rel="stylesheet" href="/resources/css/index.css" />
<link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
      $(document).ready(function () {
    	
    	//const matchId=$('.matchId').text();
    	const matchId=${sessionScope.user.matchId}
    	console.log("df",matchId);
    
    	    $(".popup").click(function () {
    	          console.log("팝업");
    	          window.open(
    	            "../user/chatting/"+matchId,
    	            "_blank",
    	            "top=100, left=300, width=430, height=750, toolbar=no, menubar=no, location=no, status=no,  resizable=no"
    	          ).onresize = (_) => {
    	            popupWindow.resizeTo(430, 750);
    	          };
    	        });   	
      });
    </script>
</head>

<body>

	<div class="main">
		<jsp:include page="user/header.jsp"></jsp:include>
		<div class="bg_img">
			<h1 class="main_title">
				청년과 노년이 함께하는<br />따뜻한 문화 교류의 공간
			</h1>
			<p class="main_subtitle">
				문화적 다양성을 누리고 새로운 인연을 만나는 곳,<br />AgeTalk에서 시작해보세요!
			</p>
			<!-- 스크롤 다운 애니메이션 -->
			<div class="scroll-downs">
				<div class="mousey">
					<div class="scroller">
						<a href="#body"></a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="main_sub" data-aos="fade-down" data-aos-duration="1000">
		<h2>채팅</h2>
		<p class="sub">
			AgeTalk는 서로의 마음을 나누고 치유할 수 있는 공간을 제공합니다.<br />1:1 채팅을 통하여 소중한 시간을
			나눠보세요.
		</p>

		<div class="carousel-wrapper">
			<div class="carousel">
				<img src="resources/image/chat.jpg" alt="chatting" /> <img
					src="resources/image/no_image.png" alt="no_img" /> <img
					src="resources/image/no_image.png" alt="no_img" />
			</div>
		</div>
		<button class="prev" type="button">
			<span class="arrow-prev"></span>
		</button>
		<button class="next" type="button">
			<span class="arrow-next"></span>
		</button>
		<script src="/resources/js/main.js"></script>
	</div>

	<div class="sub_grid">
		<div class="item" data-aos="zoom-in">
			<p class="title">우울감 개선</p>
			<p class="sub_title">
				소통의 온기, 청년과 노년이 함께<br />하는 채팅을 통한 우울 극복
			</p>
			<p class="sub_content">
				AgeTalk는 청년과의 채팅을 통해 노년시기의 우울감을<br />개선하고 사람과 사람, 사람과 기술간의 커뮤니케이션을<br />
				더 가깝고 더 안전하게 돕습니다. 청년과의 소통을 통해<br />노년 시기에 사회적 연결성을 증진하고, 우울감을 개선<br />하는
				것에 큰 도움을 줍니다.
			</p>
		</div>
		<div class="item" data-aos="zoom-in" data-aos-delay="300">
			<p class="title">세대 간 교류</p>
			<p class="sub_title">
				세대 간 교류와 상호 이해 촉진를<br />통한 사회적 관계 증진
			</p>
			<p class="sub_content">
				청년들은 어르신들의 지식과 경험으로부터 많은 것을<br />배울 수 있으며, 어르신들도 청년들로부터 새로운 시각과<br />지식을
				얻을 수 있습니다. 이러한 세대간 교류와 상호<br /> 이해는 우리 사회에 긍정적인 영향을 미칠 것 입니다.
			</p>
		</div>
		<div class="item" data-aos="zoom-in" data-aos-delay="500">
			<p class="title">소통의 장</p>
			<p class="sub_title">
				인간적인 소통의 공간 마련과<br />의미있는 소통을 위한 환경 조성
			</p>
			<p class="sub_content">
				문제를 해결하거나 새로운 아이디어를 생각해내는<br />과정에서 다양한 의견과 관점이 필요합니다. 이는<br />우울감이라는
				문제를 해결하는데 도움을 줄 수 있으며<br />더 나아가 서로를 이해하고 갈등을 예방할 수 있습니다.
			</p>
		</div>
		<script>
        AOS.init();
      </script>
	</div>
	<!-- 채팅 바로가기 타원 -->
	<a class="popup" style="text-decoration: none; cursor: pointer">
		<div class="circle">
			<img src="/resources/image/logo_circle.png" alt="logo_circle" />
		</div>
	</a>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>