<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="/resources/css/signup.css">
    <link rel="stylesheet" href="/resources/css/index.css">
	<link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    <!--파비콘-->
    <link rel="shortcut icon" href="/resources/image/favicon/favicon.ico"> <!--추가-->

</head>
<body>
    <div class="signup_back">

       <div class="bg_img">
            <jsp:include page="user/header.jsp"></jsp:include>

            <div class="signup_box animatedFadeInUp fadeInUp">
              
              <div class="su_wrap">
                <h1>회원가입</h1>
                <form method="post" >
                <div class="lg_wrap">
                  <div class="id_wrap">
                    <label>아이디</label>
                    <div class="id_subwrap">
                    <input type="text" name="id" placeholder="아이디 입력">
                    <button type="button" class="login_check">중복확인</button>
                    </div>
                  </div>
                  
                  <div class="pw_wrap">
                    <label>비밀번호</label>
                    <input type="password" name="pwd" placeholder="비밀번호 입력">
                  </div>
                  <div class="pw_wrap">
                    <label>비밀번호 확인</label>
                    <input type="password" name="passwd_chk" placeholder="비밀번호 확인을 위하여 위와 동일하게 입력해주세요.">
                  </div>
                   <div class="pw_wrap">
                    <label>이름</label>
                    <input type="text" name="name" placeholder="이름을 입력해주세요.">
                  </div>
                  
                  <div class="phone_wrap">
                    <label>전화번호</label>
                    <input type="text" name="phone" placeholder="'-'를 제외하고 입력해주세요">
                  </div>
                </div>
                	<div class="signup_btn">
                   		<button style="color:white">회원가입</button>
                   </div>
                </form>
              </div>
          </div>
      </div>
    </div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>