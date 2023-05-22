<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="/resources/css/signup_success.css">
    <link rel="stylesheet" href="/resources/css/index.css">
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    <!--파비콘-->
    <link rel="shortcut icon" href="/resources/image/favicon/favicon.ico"> 

</head>
<body>
    <div class="lg_back">

       <div class="bg_img">
            <jsp:include page="user/header.jsp"></jsp:include>
            
            
        <div class="success_box">
           <div class="circle">
            <svg class="animated-check" viewBox="0 0 24 24">
              <path d="M4.1 12.7L9 17.6 20.3 6.3" fill="none" /> </svg>
           </div>
           <h1>회원가입 완료</h1>

           
           <p>환영합니다! 지금 바로 로그인 후 AgeTalk에서<br/>소통하며 새로운 경험을 쌓아보세요.</p>
           <a href="login_user" style="color: white;" class="lg_btn">로그인 바로가기</a>
      </div>
    </div>
    </div>
   	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>