<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="resources/css/signup_work.css">
    <link rel="stylesheet" href="resources/css/index.css">
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	<link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    <!--파비콘-->
    <link rel="shortcut icon" href="resources/image/favicon/favicon.ico"> <!--추가-->
    
</head>
<body>


       <div class="bg_img">
            <jsp:include page="header.jsp"></jsp:include>

            <div class="signup_box animatedFadeInUp fadeInUp">
              
              <div class="su_wrap">
                <h2>복지사 회원가입</h2>
                <form method="post">
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
                    <input type="password" name="passwd" placeholder="비밀번호 입력">
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
      
                <form action="upload" method="post" enctype="multipart/form-data">
                  <label id="file_label">관련 서류제출</label>
                  <div class="filebox btn_upload">
                    <input class="upload_name" value="선택된 파일이 없습니다." disabled="disabled">
                    <label for="files">파일선택</label>
                    <input type="file" name="files" id="files" class="upload_hidden">
                  </div>
                </form>
                  <div id="file_chk">
                    <p>*복지사임을 인증할 수 있는 파일을 첨부해주세요.</p>
                  </div>
                  <div class="signup_btn">
                    <a href="signup_success_work" style="color:white">회원가입</a>
                  </div>
                </form>
              </div>
      </div>

      
    </div>
    <script src="resources/js/signup_work.js"></script>
    <jsp:include page="footer.jsp"></jsp:include>
</body>


</html>