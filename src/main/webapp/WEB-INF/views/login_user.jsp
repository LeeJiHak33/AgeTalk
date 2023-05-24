<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>AgeTalk</title>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<link rel="stylesheet" href="/resources/css/login.css">
<link rel="stylesheet" href="/resources/css/index.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<!--파비콘-->
<link rel="shortcut icon" href="/resources/image/favicon/favicon.ico">
<script src="https://cdn.jsdelivr.net/npm/js-cookie@rc/dist/js.cookie.min.js"></script>

</head>
<body>
	<div class="lg_back">

		<div class="bg_img">
			<jsp:include page="user/header.jsp"></jsp:include>


			<div class="login_box animatedFadeInUp fadeInUp">
				<h1>로그인</h1>
				<div>
					<form method="post">

						<div class="lg_wrap">

							<div class="id_wrap">
								<label>아이디</label> <input type="text" name="id" id="userId"
									placeholder="아이디 입력">
							</div>

							<div class="pw_wrap">
								<label>비밀번호</label> <input type="password" name="pwd"
									placeholder="비밀번호 입력">
							</div>

						</div>

						<div class="login-options">

							<div class="left-options">
								<label class="checkbox-label"> <input type="checkbox"
									name="checkId" id="idSaveCheck"/> 아이디 저장
								</label>

							</div>

							<div class="right-options">
								<a href="signup" class="login-link" style="color: white">회원가입</a>


							</div>
						</div>

						<div class="lg_btn">
							<button type="submit">로그인</button>
						</div>

					</form>

				</div>
			</div>
		</div>

		<script src="/resources/js/login_user.js"></script>

		<jsp:include page="footer.jsp"></jsp:include>

	</div>
</body>
</html>