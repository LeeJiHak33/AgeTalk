<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="/resources/css/header.css" />
    <link rel="stylesheet" href="/resources/css/index.css" />
  </head>
  <body>
    <header>
      <div class="logo_wrap">
		<a href="../"><img src="../../../resources/image/agetalk_logo.png" alt="logo" /></a>
      </div>
      <div class="menu_wrap">
        <ul class="menu_list">
          <li><a href="">소개</a></li>
          <li>
            <a href="">관리</a>
            <ul class="sub_list">
              <li class="sub_menu"><a href="./youthlist">사용자 관리</a></li>
			  <li class="sub_menu"><a href="./managelist">매칭 관리</a></li>
            </ul>
          </li>
          <li>
              <a href="../user/notice" style="text-decoration: none">고객센터</a>
              	<ul class="sub_list" style="padding:0; padding-top:20px;">
						<li class="sub_menu"><a href="../user/notice">공지사항</a></li>
						<li class="sub_menu"><a href="../user/qna">QnA</a></li>
				</ul>
            </li>
        </ul>
      </div>
      <div class="login_wrap">
        <a href="">복지사 이름</a>
      </div>
    </header>
  </body>
</html>