<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Q&A</title>

<link rel="shortcut icon" href="/resources/image/favicon/favicon.ico" />

<link rel="stylesheet" href="/resources/css/qna_detail.css" />
<link rel="stylesheet" href="/resources/css/index.css" />
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
				<h2>Q&A</h2>
			</div>

			<h3 class="bbsTitle">${item.title}</h3>
			<table class="bbsView">
				<colgroup>
					<col data-view="th" style="width: 25%" />
					<col data-view="td" style="width: 25%" />
					<col data-view="th" style="width: 25%" />
					<col data-view="td" style="width: 25%" />
				</colgroup>
				<tbody>
					<tr>
						<th scope="row" data-view="count">작성자</th>
						<td>0</td>
						<th scope="row" data-view="date">작성일</th>
						<td><fmt:formatDate value="${item.date}" pattern="yyyy-MM-dd" /></td>
					</tr>
					<tr>
						<td colspan="4" class="conts">
							<div>${item.content}</div>
						</td>
					</tr>
				</tbody>
			</table>
			<table class="bbsView page">
				<colgroup>
					<col data-view="th" style="width: 15%" />
					<col data-view="td" style="width: 85%" />
				</colgroup>
				<tbody>
					<c:if test="${item.cmt != null}">
						<tr>
							<th scope="row" style="display: flex; align-items: center"><span
								class="icon"></span> <span>관리자</span></th>
							<td>${item.cmt}</td>
						</tr>
					</c:if>
					
					<c:if test="${item.cmt == null}">
					<tr>
						<th>
							<form method="post">
								<div class="comment">
									<input name="content" type="text" placeholder="답변을 등록해주세요.">
									<button class="button" style="border: none; font-size: 16px;"> <span>등록</span></button>
								</div>
							</form>
						</th>
					</tr>
					</c:if>
				</tbody>
			</table>
			<div class="btn_area">
				<a href="../qna" class="button"> <span>목록</span>
				</a> <span class="space"></span> <a href="../qna_update/${item.id }"
					class="button"> <span>수정</span>
				</a> <span class="space"></span>
				<a href="../qna_delete/${item.id }"
					class="button"> <span>삭제</span>
				</a>
			</div>
		</section>
		<jsp:include page="../footer.jsp"></jsp:include>
	</div>
	
</body>
</html>
