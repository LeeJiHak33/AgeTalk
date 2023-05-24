<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>공지사항 상세페이지</title>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<link rel="shortcut icon" href="/resources/image/favicon/favicon.ico" />
<link rel="stylesheet" href="/resources/css/notice_detail.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
			$('.off').removeAttr('href');
	});
</script>
</head>

<body>
	<div class="layout">
		<div class="banner">
			<jsp:include page="header.jsp"></jsp:include>
			<div class="inner_banner" style="padding-top: 235px !important;">
				<h2 style="margin-bottom: 0px;font-size: 54px;font-weight: 300;">고객지원</h2>
				<p style=" margin-bottom: 0px;font-size: 34px; font-family: NotoSerif;">Customer Support</p>
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
						<td><fmt:formatDate value="${item.date}" pattern="yyyy년 MM월 dd일" /></td>
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
						<td><a class="${item.prev == 0 ? 'off':'bottom' }" href="../notice_detail/${item.prev}"> 이전 공지사항 </a></td>
					</tr>
					<tr>
						<th scope="row">다음글</th>
						<td><a class="${item.next ==0  ? 'off':'bottom' }" href="../notice_detail/${item.next}"> 다음 공지사항 </a></td>
					</tr>
				</tbody>
			</table>
			<div class="btn_area">
				<a href="../notice" class="button"> <span>목록</span>
				</a>
			</div>
		</section>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>
