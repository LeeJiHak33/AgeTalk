<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>관리자 공지사항 상세페이지</title>

<link rel="shortcut icon" href="/resources/image/favicon/favicon.ico" />

<link rel="stylesheet" href="/resources/css/notice_detail.css" />

</head>

<body>
	<div class="layout">
		<div class="banner">
			<jsp:include page="header.jsp"></jsp:include>
			<div class="inner_banner">
				<h2>공지사항 관리</h2>
				<p class="in_2">Notice Management</p>
			</div>
		</div>

		<section class="container">
			<div class="title">
				<h2>공지사항</h2>
			</div>

			<h3 class="bbsTitle">${item.title }</h3>
			<table class="bbsView">
				<colgroup>
					<col data-view="th" style="width: 25%" />
					<col data-view="td" style="width: 25%" />
					<col data-view="th" style="width: 25%" />
					<col data-view="td" style="width: 25%" />
				</colgroup>
				<tbody>
					<tr>
						<th scope="row" data-view="date">작성일</th>
						<fmt:formatDate var="date" value="${item.date}" pattern="yyyy년 MM월 dd일" />
						<td>${date }</td>
						<th scope="row" data-view="count">조회수</th>
						<td>${item.view }</td>
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
					<tr>
						<th scope="row">이전글</th>
						<td><a> 이전 공지사항 </a></td>
					</tr>
					<tr>
						<th scope="row">다음글</th>
						<td><a> 다음 공지사항 </a></td>
					</tr>
				</tbody>
			</table>
			<div class="btn_area">
				<a href="../notice" class="button"> <span>목록</span></a>
				<a href="../notice_update/${item.id}" class="button"> <span>수정</span></a>
				<a href="../notice_delete/${item.id}" class="button"> <span>삭제</span></a>
			</div>
		</section>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>
