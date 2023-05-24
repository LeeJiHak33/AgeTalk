<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>복지사 정보</title>
  <link rel="shortcut icon" href="/resources/image/favicon/favicon.ico" />
   <link rel="stylesheet" href="/resources/css/work_detail.css" />
</head>
<body>
<!-- 헤더 -->
<jsp:include page="header.jsp"></jsp:include>
<!-- 메인 -->
    <div class="layout">
      <div class="banner">
        <div class="inner_banner">
          <p>복지사 정보</p>
        </div>
      </div>
      <div class="inner_layout">
        <h3 class="bbsTitle">${item.name }님이 가입신청하였습니다.</h3>
        <div class="content_wrap">
          <div class="name_wrap">
            <p>이름:</p>
            <p>${item.name}</p>
          </div>
          <div class="phone_wrap">
            <p>전화번호:</p>
            <p>${item.phone}</p>
          </div>
          <div class="img_wrap">
          	<c:if test="${attach.workId == item.id }">
          		<img src="/upload/${attach.uuid }_${attach.name}"  alt="no_image.png" />
          	</c:if>
          	<c:if test="${attach.workId != item.id }">
          		 <img src="/resources/image/no_image.png" alt="no_image.png" />
          	</c:if>
           
          </div>
        </div>
        <div class="ok_btn_wrap">
          <a class="confirm_btn" href="../work_confirm/${item.id}">승인</a>
          <a class="list_btn" href="../work_list">목록</a>
        </div>
      </div>
    </div>
  <!-- 푸터 -->
  <jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>