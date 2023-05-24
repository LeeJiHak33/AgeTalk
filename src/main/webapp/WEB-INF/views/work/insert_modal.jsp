<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="modal fade"
          id="oldupdateModal"
          tabindex="-1"
          aria-labelledby="ModalLabel"
          aria-hidden="true"
          style="position: none">
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
                    사용자 등록
                  </p>
                </div>
                <div class="modal-header" style="display: block">
                  <p class="modal-title text_gray">프로필</p>
                  <p class="text-dark nickname">{이름}</p>
                </div>
                <div class="modal-header" style="display: block">
                  <p class="modal-title text_gray">계정 정보</p>
                  <div class="info">
                  	<div class="input-group mb-4">
                    <span class="text-dark input-group-text">이름</span> 
                    <input name="name" type="text" placeholder="등록하실 어르신의 성함을 입력해주세요." class="form-control">
                    </div>
                    <div class="input-group mb-4">
                    <span class="text-dark input-group-text">시리얼 번호</span> 
                    <input name="sId" type="text" <%-- value="${item.s_id}" --%> class="form-control">
                    </div>
                    <div class="input-group mb-4">
                    <span class="text-dark input-group-text">점수</span> 
                    <input name="score" type="text" placeholder="설문조사 점수를 입력해주세요." class="form-control">
                    </div>

                   
                      
                                           
                    </div>
                  </div>
                </div>
              </div>
              </div>
              </div>
              
              
</body>
</html>