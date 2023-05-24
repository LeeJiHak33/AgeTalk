<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
	
	<link rel="stylesheet" href="/resources/css/managelist_insert.css"/>
	
</head>

  <body>
  <a class="button"
            data-bs-toggle="modal"
            data-bs-target="#insertModal"
            style="cursor: pointer;">사용자 등록</a>
            
<div class="modal fade"
     id="insertModal" 
     tabindex="-1"	aria-labelledby="ModalLabel" aria-hidden="true"
							style="position: none">
							<div class="modal-dialog modal-lg">
								<div class="modal-content" style="top: 50px;">
									<div class="modal-head">
										<div class="modal-header">
											<p class="modal-title text-dark" id="ModalLabel">사용자 등록</p>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>										
										
										<div class="modal-header" style="display: block">
											<p class="modal-title text_gray">사용자 정보</p>
											<div class="info">
												<div class="input-group mb-4">
													<span class="text-dark input-group-text">이름</span>
													<input name="name" type="text"	placeholder="등록하실 어르신의 성함을 입력해주세요." class="form-control">
												</div>
												
												<div class="input-group mb-4">
													<span class="text-dark input-group-text">점수</span> <input
														name="score" type="text" placeholder="설문조사 점수를 입력해주세요."
														class="form-control">
												</div>
												<div class="input-group mb-4">
													<span class="text-dark input-group-text">기기번호</span> <input
														name="sId" type="text"placeholder="기기의 시리얼 번호를 입력해주세요."
														<%-- value="${item.s_id}" --%> class="form-control">
												</div>
												</div>
												</div>
												

              <div class="modal-footer">
                <div class="modal_btns">
                  <a href = "/work/add"><button type="button" class="btn_update">사용자 등록</button></a>
                </div>
              </div>
            </div>
          </div>
          </div>
          </div>
  </body>
</html>
