<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>관리자 공지사항</title>

<link rel="shortcut icon" href="/resources/image/favicon/favicon.ico" />

<link rel="stylesheet" href="/resources/css/notice.css" />

<style type="text/css">
	.layout .banner{
		background: linear-gradient(rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.2)), 
		url(/resources/image/sub_img_1.jpg) no-repeat;
		background-size: cover;
    	background-position: 40% 30%;
	}
	.inner_banner h2{
		font-size:45px;
	}
</style>
</head>

<body>
	<div class="layout">
		<div class="banner">
			 <jsp:include page="header.jsp"></jsp:include>
			<div class="inner_banner" style="padding-top: 135px !important;">
				<h2>공지사항 관리</h2>
				
			</div>
		</div>
		<section class="container">
			<div class="title">
				<h2 style="font-weight: 300;">공지사항</h2>
			</div>
		
			<ul class="bbsList">
				<!-- 리스트 시작 -->
				<c:if test="${list.size()< 1 }">
					<p style="margin: 20px 0 0 25px;">공지사항이 없습니다.</p>
				</c:if>
				<c:forEach items="${list}" var="item">
					<li >
						<fmt:formatDate var="day" value="${item.date}" pattern="dd" />
						<fmt:formatDate var="year_mon" value="${item.date}" pattern="yyyy.MM" />
						<span class="date"> <i>${day}</i> ${year_mon}</span>
						<a href="notice_detail/${item.id}" class="subject"> ${item.title }</a>
					</li>
				</c:forEach>
				<!-- 리스트 종료 -->
			</ul>
			<div class="btn_area">
				<a href="notice_insert" class="button"> <span
					class="btn_write">글쓰기</span>
				</a>
			</div>
			<!-- page -->
			 <jsp:include page="../pagenation.jsp"></jsp:include>
		</section>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>
