<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>공지사항</title>

<link rel="shortcut icon" href="/resources/image/favicon/favicon.ico" />
<link rel="stylesheet" href="/resources/css/notice.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
	<div class="layout">
		<div class="banner">
			<jsp:include page="header.jsp"></jsp:include>
			<div class="inner_banner">
				<h2>고객지원</h2>
				<p>Customer Support</p>
			</div>
		</div>
		<section class="container">
			<div class="title">
				<h2>공지사항</h2>
			</div>
			<div class="ct_2">
				<a class="login-link">공지사항</a> <span class="separator">|</span> <a
					href="qna" class="login-link2">Q&A</a>
			</div>
			<ul class="bbsList">
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
			</ul>
			<!-- page -->
			<jsp:include page="../pagenation.jsp"></jsp:include>
		</section>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>
