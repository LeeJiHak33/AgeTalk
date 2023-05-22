<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AgeTalk</title>
    <link rel="stylesheet" href="/resources/css/login.css">
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
    <div class="lg_back">

       <div class="bg_img">
            <jsp:include page="user/header.jsp"></jsp:include>
            
            
        <div class="login_box animatedFadeInUp fadeInUp">
          <h1>로그인</h1>
          <div>
            <form method="post">
            <div class="lg_wrap">
              <div class="id_wrap">
                <label>아이디</label>
                <input type="text" name="id" placeholder="아이디 입력">
              </div>
              <div class="pw_wrap">
                <label>비밀번호</label>
                <input type="password" name="passwd" placeholder="비밀번호 입력">
              </div>
            </div>
              <div class="login-options">
                <div class="left-options">
                  <label class="checkbox-label">
                    <input type="checkbox" name="id-save" value="yes"> 아이디 저장
                  </label>
                </div>
                <div class="right-options">
                  <a href="signup_work" class="login-link" style="color: white">회원가입</a>

                </div>
              </div>
              <div class="lg_btn">
                <a>로그인</a>
              </div>
            </form>
          </div>
        </div>
      </div>
      
      <jsp:include page="footer.jsp"></jsp:include>

    </div>
</body>
</html>