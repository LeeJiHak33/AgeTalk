<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>복지사 확인 리스트</title>
<link rel="stylesheet" href="/resources/css/work_list.css" />
<link rel="stylesheet" href="/resources/css/admin_table.css" />
<link rel="shortcut icon" href="/resources/image/favicon/favicon.ico" />

<style>
table td, table th {
	width: calc(100%/ 3);
}
</style>
</head>
<body>
	<!-- 헤더 -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- 메인 -->
	<div class="layout">
		<div class="banner">
			<div class="inner_banner">
				<p>복지사 확인 리스트</p>
			</div>
		</div>
		<div class="inner_layout">
			<table>
				<thead>
					<tr>
						<th>번호</th>
						<th>복지사</th>
						<th>비고</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${list.size()<1}">
						<tr>
							<td colspan="3">가입한 복지사가 없습니다.</td>
						</tr>
					</c:if>
					<c:forEach items="${list}" var="item" varStatus="status">
						<tr>
							<td>${status.count}</td>
							<td><a class="walfarework_btn" href="work_detail/${item.id}">${item.name}</a></td>
							<td><a class="confirm_btn" href="work_confirm/${item.id}">승인</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<!-- 페이지네이션 -->
		<jsp:include page="../pagenation.jsp"></jsp:include>
	</div>
	<!-- 푸터 -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>