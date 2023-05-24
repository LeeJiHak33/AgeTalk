<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="/resources/css/signup_success_work.css">
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
            
        <div class="success_box">
           <div class="circle">
            <svg class="animated-check" viewBox="0 0 24 24">
              <path d="M4.1 12.7L9 17.6 20.3 6.3" fill="none" /> </svg>
           </div>
           <h1>회원가입 완료</h1>

           <div id="msg_box">
              <p id="first_msg">관리자 승인 후 로그인이 가능합니다.</p> 
              <p id="second_msg">승인 후 입력하신 전화번호로 안내메세지가<br/> 전송될 예정이니 참고 부탁드립니다.</p>
           </div>
           <a href=".." style="color: white;" class="lg_btn">메인으로</a>
      </div>

    </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>