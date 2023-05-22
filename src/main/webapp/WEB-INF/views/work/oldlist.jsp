<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>사용자 관리</title>
	

    <!--파비콘-->
    <link rel="shortcut icon" href="/resources/image/favicon/favicon.ico">

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
	<link rel="stylesheet" href="/resources/css/main.css">
		<link rel="stylesheet" href="/resources/css/list.css" />
	<link rel="stylesheet" href="/resources/css/pagenation.css">
	<link rel="stylesheet" href="/resources/css/modal.css" />
	<style>
	header{
	position: relative !important;
	}
	header .menu_wrap .menu_list {
	margin-bottom: 0 !important; 
	padding-left: 0 !important;
	}
	header .menu_wrap .sub_list{
	padding-top: 20px !important;
	padding-left: 0 !important;
	}
	</style>
</head>
<body>
	<div>
		<div class="tle">
			<div class="sub_image">

			<jsp:include page="header.jsp"></jsp:include>
				

				<h1>사용자 관리</h1>
			</div>	
		</div>
		<div class="sub_tle">
			
			<div class="y_list">
				<div class="ct_2">
					<a href="./youthlist" class="yetc-link">청년 목록</a>
					<span class="separator">|</span>
					<a class="chosen-link" href="./oldlist" >어르신 목록</a>
				  </div>
				<table border="1" class="table table-sm  table-hover">
					<thead>
						<tr>
							<th>어르신</th>
							<th>우울도</th>							
							<th>관리</th>
						</tr>
					</thead>

					<tbody id="list" class="table-group-divider">
					<c:if test="${list.size() < 1 }">
					<tr class="">
						<td colspan="5">등록된 게시글이 없습니다.</td>
					</tr>
				</c:if>
				
	<c:forEach items="${list}" var="item">
    <tr>
   
        <td data-table="name">${item.name}</td>
        <td>
            <div class="progress" data-table="hyp">
                <div id="my_div" class="progress-bar" role="progressbar" aria-valuemin="0" aria-valuemax="100">
                    <div>${item.hyp}<span>%</span></div>
                </div>
            </div>
        </td>        
        <td><button class="update_btn"
            data-bs-toggle="modal"
            data-bs-target="#oldupdateModal"
            style=" cursor: pointer;">수정</button><span class="gap"></span>  <button class="del_btn">삭제</button></td>
    </tr>
</c:forEach>
</table>

										 

			</div>
</div>

		
			<jsp:include page="../pagenation.jsp"></jsp:include>
		
		</div>	
		
<div>
		<jsp:include page="../footer.jsp"></jsp:include>
	</div>
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
                    {어르신 성함} 정보 수정하기
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
                    <input name="name" type="text" <%-- value="${item.name}" --%> class="form-control">
                    </div>
                    <div class="input-group mb-4">
                    <span class="text-dark input-group-text">기기 고유 번호</span> 
                    <input name="phone" type="text" <%-- value="${item.phone}" --%> class="form-control">
                    </div>
                   

                    <div style="display: flex; justify-content: flex-start">
                      <p class="text-dark" style="font-size: 18px;">설문등록여부 : {완료 & 미완료}</p>
                      <!--설문 완료시-->
                      <a href="../user/diagnosis"><button type="button" class="modal_diagnosis">검사 결과</button></a>
                      
                    </div>
                  </div>
                </div>
              </div>

              <div class="modal-footer">
                <div class="modal_btns">
                  <button type="button" class="btn_update">정보수정</button>                  
                </div>
              </div>
            </div>
          </div>
          </div>
</body>

</html>