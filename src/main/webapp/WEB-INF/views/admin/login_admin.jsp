<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자 로그인</title>
<link rel="shortcut icon" href="/resources/image/favicon/favicon.ico" />
<link rel="stylesheet" href="../resources/css/login.css">
<link rel="stylesheet" href="../resources/include/header/header.css">
<link rel="stylesheet" href="../resources/include/footer/footer.css">
<link rel="stylesheet" href="../resources/include/index.css">


</head>
<body>
	<div class="lg_back">

		<div class="bg_img">
			<jsp:include page="header.jsp"></jsp:include>


			<div class="login_box">
				<h1>관리자 로그인</h1>
				<div>
					<form method="post">
						<div class="lg_wrap" style="margin-top: 20px">
							<div class="id_wrap">
								<label>아이디</label> <input type="text" name="id"
									placeholder="아이디 입력">
							</div>
							<div class="pw_wrap">
								<label>비밀번호</label> <input type="password" name="pwd"
									placeholder="비밀번호 입력">
							</div>
						</div>

						<div class="lg_btn" style="margin-top: 50px;">
							<button type="submit">로그인</button>
						</div>

					</form>
				</div>
			</div>
		</div>

		<jsp:include page="../footer.jsp"></jsp:include>

	</div>
</body>
</html>