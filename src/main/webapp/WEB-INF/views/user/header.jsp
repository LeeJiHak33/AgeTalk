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
          <a href="/"><img src="/resources/image/agetalk_logo.png" alt="logo" /></a>
        </div>
        <div class="menu_wrap">
          <ul class="menu_list" style="margin-bottom: 0; padding-left: 0">
            <li><a href="../../user/explain" style="text-decoration: none">소개</a></li>
            <li>
              <a class="popup" style="text-decoration: none; cursor: pointer"
                >채팅하기
                </a>
            </li>
            <li>
              <a href="../../user/notice" style="text-decoration: none">고객센터</a>
              	<ul class="sub_list" style="padding:0; padding-top:20px;">
						<li class="sub_menu"><a href="../../user/notice">공지사항</a></li>
						<li class="sub_menu"><a href="../../user/qna">QnA</a></li>
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
          <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content">
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
                    ${user.name}님의 마이페이지 입니다.
                  </p>
                </div>
                <div class="modal-header" style="display: block">
                  <p class="modal-title text_gray">프로필</p>
                  <p class="text-dark nickname">${user.name }</p>
                </div>
                <div class="modal-header" style="display: block">
                  <p class="modal-title text_gray">계정 정보</p>
                  <div class="info" id="info_reload">
                    <p class="text-dark">아이디 : ${user.id}</p>
                    <p class="text-dark">휴대폰 : ${user.phone }</p>
                    <p class="text-dark">이름 : ${user.name }</p>
                    <div style="display: flex; justify-content: flex-start">
                      <p class="text-dark">설문조사여부 : <c:if test="${user.hyp == 0}">미완료</c:if><c:if test="${user.hyp > 0}">완료</c:if></p>
                      <!--설문 완료시-->
                      <a href="../user/diagnosis"><button type="button" class="modal_diagnosis"><c:if test="${user.hyp == 0}">검사</c:if><c:if test="${user.hyp > 0}">재검사</c:if></button></a>
                      <!-- 설문 미완료시 -->
                      <!-- <a href="../User/diagnosis.html"><button type="button" class="modal_diagnosis">재검사</button></a> -->
                    </div>
                  </div>
                </div>
              </div>
              <div class="modal-notice">
                <p class="text_gray">공지사항</p>
                <p class="notice_title"><a href="../../user/notice" style="color:black;">${notice.title}</a></p>
                <p style="margin-left: auto">
                  <a
                    href="../user/notice"
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
        	
          <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content">
              <div class="modal-head">
              <form method="post" name="update_form">
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
	                    ${user.name }님의 마이페이지 입니다.
	                  </p>
	                </div>
	                <div class="modal-header" style="display: block">
	                  <p class="modal-title text_gray">프로필</p>
	                  <p class="text-dark nickname">${user.name}</p>
	                </div>
	                <div class="modal-header" style="display: block">
	                  <p class="modal-title text_gray">계정 정보</p>
	                 
	                  <div class="info">
		                  	<div class="input-group mb-4">
		                    <span class="text-dark input-group-text">아이디</span> 
		                    <input name="name" type="text" id="id_input" value="${user.id}" class="form-control">
		                    </div>
		                    <div class="input-group mb-4">
		                    <span class="text-dark input-group-text">휴대폰</span> 
		                    <input name="phone" type="text" id="phone_input" value="${user.phone}" class="form-control">
		                    </div>
		                    <div class="input-group mb-4" style="padding-bottom: 10px;">
		                    <span class="text-dark input-group-text">이름</span> 
		                    <input name="id" type="text" id="name_input" value="${user.name}" class="form-control">
		                    </div>
						
	                    <div style="display: flex; justify-content: flex-start">
	                      <p class="text-dark" style="font-size: 18px;">설문조사여부 :  <c:if test="${user.hyp == 0}">미완료</c:if><c:if test="${user.hyp > 0}">완료</c:if></p>
	                      <!--설문 완료시-->
	                      <a href="../user/diagnosis"><button type="button" class="modal_diagnosis"><c:if test="${user.hyp == 0}">검사</c:if><c:if test="${user.hyp > 0}">재검사</c:if></button></a>
	                      <!-- 설문 미완료시 -->
	                      <!-- <a href="../User/diagnosis.html"><button type="button" class="modal_diagnosis">재검사</button></a> -->
	                    </div>
	                  </div>
	                </div>
	                <div class="modal-footer">
	                <div class="modal_btns">
	                  <button type="button" class="btn_update" id="modal_submit">정보수정</button>
	                  <button type="button" class="btn_out" onclick="out()">회원탈퇴</button>
	                </div>
	              	</div>
                </form>
              </div>
				
              <script>
              	function out(){
              		let answer;

            		answer = confirm("정말 회원탈퇴를 하시겠습니까?");
            		
            		if(answer == true){
            			alert("탈퇴가 완료됐습니다.");
            			location.href = "/out";
            		}else{
            			return;
            		}
              	};
              
				$("#modal_submit").click(function(){
			
					const form = document.update_form;
					const id = $("#id_input").val();
					const phone = $("#phone_input").val();
					const name = $("#name_input").val();
					
					const data = {id : id,
								phone : phone,
								name : name
								};
					
					if(form.id_input.value == ""){		
						alert("아이디를 입력해주세요.");
						form.id.focus();			
						return;
					} 
					if(form.phone_input.value == ""){		
						alert("휴대폰번호를 입력해주세요.");
						form.phone.focus();			
						return;
					} 
					if(form.name_input.value == ""){		
						alert("이름을 입력해주세요.");
						form.name.focus();			
						return;
					} 
					if(confirm("정보를 수정하시겠습니까?")){
					$.ajax({
						url : "/update_user",
						type : "post",
						data : data,
						success : function(){
							alert("정보수정이 완료됐습니다.");
							$("#updateModal").modal('hide');
							$('#info_reload').load(location.href+' #info_reload');
					        $("#MyModal").modal("show"); 
						},
						error : function(){
							alert("에러가 발생했습니다. 잠시 후 다시 시도해주세요.")
							console.log("오류");
						}
					});
					} else{
						return false;
					}
				});
			</script>
          	
            </div>
          </div>
        </div>
      </header>
  </body>
</html>