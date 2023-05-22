<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="/resources/css/header.css" />
    <link rel="stylesheet" href="/resources/css/index.css" />
    <link rel="stylesheet" href="/resources/css/modal.css" />

  </head>
 <body>
   <header style="position: absolute; z-index: 1">
        <div class="logo_wrap">
          <a href="../../"><img src="/resources/image/agetalk_logo.png" alt="logo" /></a>
        </div>
        <div class="menu_wrap">
          <ul class="menu_list" style="margin-bottom: 0; padding-left: 0">
            <li><a href="../user/explain" style="text-decoration: none">소개</a></li>
            <li>
              <a class="popup" style="text-decoration: none; cursor: pointer"
                >채팅하기
                </a>
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
        <c:if test="${sessionScope.user == null}">
        <div class="login_wrap">
          <a href="../../login_div" style="text-decoration: none;"
            >로그인 &nbsp; | &nbsp; 회원가입</a>
        </div>
        </c:if>
        <!-- modal trigger button -->
        <c:if test="${sessionScope.user != null}">
        <div class="login_wrap">
          <a
            data-bs-toggle="modal"
            data-bs-target="#MyModal"
            style="font-size: 15px; color: #ffff; cursor: pointer;">
            마이페이지
          </a>
        </div>
         </c:if>
        <!-- Modal -->
        <div
          class="modal fade"
          id="MyModal"
          tabindex="-1"
          aria-labelledby="ModalLabel"
          aria-hidden="true"
          style="position: none"
        >
          <div class="modal-dialog modal-lg">
            <div class="modal-content" style="top: 70px;">
              <div class="modal-head">
                <div class="modal-header">
                  <p class="modal-title text-dark" id="ModalLabel">
                    마이페이지
                  </p>
                  <button
                    type="button"
                    class="btn-close"
                    data-bs-dismiss="modal"
                    aria-label="Close"
                  ></button>
                </div>
                <div class="modal-header">
                  <p class="modal-title text-dark">
                    {닉네임}님의 마이페이지 입니다.
                  </p>
                </div>
                <div class="modal-header" style="display: block">
                  <p class="modal-title text_gray">프로필</p>
                  <p class="text-dark nickname">{닉네임}</p>
                </div>
                <div class="modal-header" style="display: block">
                  <p class="modal-title text_gray">계정 정보</p>
                  <div class="info">
                    <p class="text-dark">이름 : {이름}</p>
                    <p class="text-dark">휴대폰 : 010-1234-5678</p>
                    <p class="text-dark">아이디 : {아이디}</p>
                    <div style="display: flex; justify-content: flex-start">
                      <p class="text-dark">설문조사여부 : {완료 & 미완료}</p>
                      <!--설문 완료시-->
                      <a href="../user/diagnosis"><button type="button" class="modal_diagnosis">검사</button></a>
                      <!-- 설문 미완료시 -->
                      <!-- <a href="../User/diagnosis.html"><button type="button" class="modal_diagnosis">재검사</button></a> -->
                    </div>
                  </div>
                </div>
              </div>
              <div class="modal-notice">
                <p class="text_gray">공지사항</p>
                <p class="notice_title">{공지사항 제목}</p>
                <p style="margin-left: auto">
                  <a
                    href="../User/notice"
                    style="text-decoration: none; color: black"
                    >></a>
                </p>
              </div>
              <div class="modal-footer">
                <div class="modal_btns">
                  <button type="button" class="btn_update" data-bs-toggle="modal"
            data-bs-target="#updateModal">정보수정</button>
                  <button type="button" class="btn_out">로그아웃</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        
        
        <!-- update modal -->
        <div
          class="modal fade"
          id="updateModal"
          tabindex="-1"
          aria-labelledby="ModalLabel"
          aria-hidden="true"
          style="position: none"
        >
          <div class="modal-dialog modal-lg">
            <div class="modal-content" style="top: 50px;">
              <div class="modal-head">
                <div class="modal-header">
                  <p class="modal-title text-dark" id="ModalLabel">
                    정보 수정
                  </p>
                  <button
                    type="button"
                    class="btn-close"
                    data-bs-dismiss="modal"
                    aria-label="Close"
                  ></button>
                </div>
                <div class="modal-header">
                  <p class="modal-title text-dark">
                    {닉네임}님의 마이페이지 입니다.
                  </p>
                </div>
                <div class="modal-header" style="display: block">
                  <p class="modal-title text_gray">프로필</p>
                  <p class="text-dark nickname">{닉네임}</p>
                </div>
                <div class="modal-header" style="display: block">
                  <p class="modal-title text_gray">계정 정보</p>
                  <div class="info">
                  	<div class="input-group mb-4">
                    <span class="text-dark input-group-text">이름</span> 
                    <input name="name" type="text" <%-- value="${item.name}" --%> class="form-control">
                    </div>
                    <div class="input-group mb-4">
                    <span class="text-dark input-group-text">휴대폰</span> 
                    <input name="phone" type="text" <%-- value="${item.phone}" --%> class="form-control">
                    </div>
                    <div class="input-group mb-4" style="padding-bottom: 10px;">
                    <span class="text-dark input-group-text">아이디</span> 
                    <input name="id" type="text" <%-- value="${item.id}" --%> class="form-control">
                    </div>

                    <div style="display: flex; justify-content: flex-start">
                      <p class="text-dark" style="font-size: 18px;">설문조사여부 : {완료 & 미완료}</p>
                      <!--설문 완료시-->
                      <a href="../user/diagnosis"><button type="button" class="modal_diagnosis">검사</button></a>
                      <!-- 설문 미완료시 -->
                      <!-- <a href="../User/diagnosis.html"><button type="button" class="modal_diagnosis">재검사</button></a> -->
                    </div>
                  </div>
                </div>
              </div>

              <div class="modal-footer">
                <div class="modal_btns">
                  <button type="button" class="btn_update">정보수정</button>
                  <button type="button" class="btn_out">로그아웃</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </header>
  </body>
</html>