<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Q&A</title>

<link rel="shortcut icon" href="/resources/image/favicon/favicon.ico" />

<link rel="stylesheet" href="/resources/css/qna.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>

</head>

<body>
	<div class="layout">
		<div class="banner">
			<jsp:include page="header.jsp"></jsp:include>
			<div class="inner_banner">
				<h2>고객지원</h2>
				<p class="in_2">Customer Support</p>
			</div>
		</div>
		<section class="container">
			<div class="title">
				<h2>Q&A</h2>
			</div>
			<div class="ct_2">
				<a href="notice" class="login-link">공지사항</a> <span
					class="separator">|</span> <a class="login-link2">Q&A</a>
			</div>
			<table class="bbsList">
				<colgroup>
					<col data-table="number" style="width: 7%" />
					<col data-table="subject" style="width: 50%" />
					<col data-table="write" style="width: 15%" />
					<col data-table="date" style="width: 15%" />
				</colgroup>
				<thead>
					<tr>
						<th scope="col" data-table="number">No.</th>
						<th scope="col" data-table="subject">제목</th>
						<th scope="col" data-table="write">작성자</th>
						<th scope="col" data-table="date">작성일</th>
						<th scope="col" data-table="write">상태</th>
					</tr>
				</thead>
				<tbody>
				
				<c:if test="${list.size() < 1 }">
					<tr class="">
						<td colspan="5">등록된 게시글이 없습니다.</td>
					</tr>
				</c:if>
				
				<c:forEach items="${list}" var="item">
					<tr class="">
						<td data-table="number">${item.id}</td>
						<td data-table="subject"><a href="qna_detail/${item.id}">${item.title}</a>
						</td>
						<td data-table="write">${item.name}</td>
						<td data-table="date"><fmt:formatDate value="${item.date}" pattern="yyyy-MM-dd" /></td>
						<c:if test="${item.cmt == null}">
						<td>답변대기</td>
						</c:if>
						<c:if test="${item.cmt != null}">
						<td>답변완료</td>
						</c:if>
					</tr>
				</c:forEach>
					
				</tbody>
			</table>
			<div class="btn_area">
				<a href="qna_insert" class="button"> <span
					class="btn_write">글쓰기</span>
				</a>
			</div>
			<!-- <div>
				<a href="qna_dummy">대량등록</a>
			</div>
			<div>
				<a href="qna_init">초기화</a>
			</div> -->
			<jsp:include page="../pagenation.jsp"></jsp:include>
		</section>	
	</div>

	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>
