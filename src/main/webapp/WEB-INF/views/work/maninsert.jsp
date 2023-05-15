<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>사용자 등록</title>
<!--파비콘-->


	 <link rel="shortcut icon" href="../resources/image/favicon/favicon.ico">

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
	<link rel="stylesheet" href="../../../resources/css/main.css">
	<link rel="stylesheet" href="../../../resources/css/header.css">
	<link rel="stylesheet" href="../../../resources/css/list.css" />
	<link rel="stylesheet" href="../../../resources/css/managelist_insert.css">
	<link rel="stylesheet" href="../../../resources/css/index.css">
	
	
	
</head>

  <body>
    <div class="layout">
      <div class="banner">
        <header>
					<div class="logo_wrap">
					  <a href="../"><img src="../../../resources/image/agetalk_logo.png" alt="logo" /></a>
					</div>
					<div class="menu_wrap">
					  <ul class="menu_list" style="margin-bottom: 0; padding-left: 0;">
						<li><a href="">소개</a></li>
						<li>
						  <a href="">관리</a>
						  <ul class="sub_list" style="padding-top: 20px; padding-left: 0;">
							<li class="sub_menu"><a href="../work/youthlist">사용자 관리</a></li>
							<li class="sub_menu"><a href="../work/managelist">매칭 관리</a></li>
						  </ul>
						</li>
						<li><a href="">고객센터</a></li>
					  </ul>
					</div>
					<div class="login_wrap">
					  <a href="">복지사 이름</a>
					</div>
				  </header>
        <div class="inner_banner">
          <h2>사용자 등록</h2>
        </div>
      </div>

      <div class="title">
       
      </div>
      <div class="tle">
      <div class="insert">
        <span>성함</span><div class="insert_name">
          <input type="text" placeholder="등록하실 어르신의 성함을 입력해주세요." />
        </div>
        </div>
        <div class="insert">
          <span>시리얼 번호</span>
          <div class="insert_id">
            <input type="text" placeholder="기기의 시리얼 번호를 입력해주세요." />
          </div></div>
          <div class="insert">
            <span>설문조사 점수</span>
            <div class="insert_score">
              <input type="text" placeholder="설문조사 점수를 입력해주세요." />
            </div></div>
      </div>
      </div>
      <div class="btn_area">
        <a href="" class="button">
          <span>등록</span>
        </a>
        <span class="space"></span>
        <a href="../" class="button">
          <span>취소</span>
        </a>
      </div>
   
  </body>
</html>
