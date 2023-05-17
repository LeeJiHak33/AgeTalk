<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="resources/css/signup_div.css">
    <link rel="stylesheet" href="resources/css/index.css">
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
        <!--파비콘-->
    <link rel="shortcut icon" href="resources/image/favicon/favicon.ico"> <!--추가-->

    
    </head>
    <body>
        <div class="lg_back">
    
           <div class="bg_img">
                <jsp:include page="user/header.jsp"></jsp:include>
                
            <div class="box">
                <div class="user_box animatedFadeInUp fadeInUp">
                    <img src="resources/image/user.png" style="width: 300px; height: 300px;">
                    <p>일반 사용자</p>
                    <a href="signup">회원가입</a>
                </div>

                <div class="work_box animatedFadeInUp fadeInUp">
                    <img src="resources/image/welfare.png" style="width: 300px; height: 300px;">    
                    <p>복지사</p>
                    <a href="signup_work">회원가입</a>
                </div>
            </div>    
          </div>
          
          <jsp:include page="footer.jsp"></jsp:include>
        </div>
    </body>
    </html>