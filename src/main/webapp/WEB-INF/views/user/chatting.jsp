<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채팅</title>
  <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="/resources/js/chatting.js"></script>
    <link rel="stylesheet" href="/resources/css/chatting.css" />
    <link rel="stylesheet" href="/resources/css/index.css" />
   
    <link rel="shortcut icon" href="/resources/image/favicon/favicon.ico"> <!--추가-->
</head>
<body>
 <header>
      <div class="header_wrap">
        <div></div>
        <div class="title_wrap"><p>채팅</p></div>
        <div class="search_btn_wrap"><button class="search_btn"></button></div>
      </div>
      <div class="search_wrap" style="display: none">
        <div class="search_inner">
          <form class="search_form" action="">
            <span class="search_icon"></span>
            <input type="text" class="inner_search" />
          </form>
        </div>
        <button class="up_btn"></button>
        <button class="down_btn"></button>
        <input type="date" id="date" style="visibility: hidden;">
        <button class="close"></button>
      
    </header>
    <div class="layout">
      <div class="chatting_list">
        <div class="date_wrap">
          <div class="date"><p>2023.04.30</p></div>
        </div>
        <div class="other_chatting_wrap">
          <div class="other_chatting">
            <p>안녕하세요</p>
          </div>
          <button class="speaker_btn"></button>
        </div>
        <div class="my_chatting_wrap">
          <div class="my_chatting">
            <p>
              말씀을 잘 이해하지 못했어요. 궁금한 내용을 "소액결제 한도
              알려줘"와 같이 질문해 주세요.
            </p>
          </div>
        </div>
        <div class="other_chatting_wrap">
          <div class="other_chatting">
            <p>
              안녕하세요 저는 누구누구입니다
              반갑습니다다다다닫다다닫다다다ㅏㄷ다다다다다ㅏ다닫다
              ㅇㄹㅇㄹㅇㄹㄴㄴㅇㄹㄴㅇㄹ
            </p>
          </div>
          <button class="speaker_btn"></button>
        </div>
        <div class="my_chatting_wrap">
          <div class="my_chatting">
            <p>
              말씀을 잘 이해하지 못했어요. 궁금한 내용을 "소액결제 한도
              알려줘"와 같이 질문해 주세요.
            </p>
          </div>
        </div>
        <div class="other_chatting_wrap">
          <div class="other_chatting">
            <p>
              안녕하세요 저는 누구누구입니다
              반갑습니다다다다닫다다닫다다다ㅏㄷ다다다다다ㅏ다닫다
              ㅇㄹㅇㄹㅇㄹㄴㄴㅇㄹㄴㅇㄹ
            </p>
          </div>
          <button class="speaker_btn"></button>
        </div>
        <div class="my_chatting_wrap">
          <div class="my_chatting">
            <p>
              말씀을 잘 이해하지 못했어요. 궁금한 내용을 "소액결제 한도
              알려줘"와 같이 질문해 주세요.
            </p>
          </div>
        </div>
      <div class="chatting_input_wrap">
        <form class="chatting_form" action="" method="post">
          <input type="text" class="chatting" />
          <button class="chatting_btn"></button>
        </form>
      </div>
    </div>
  </body>
</body>
</html>