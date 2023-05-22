<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	width: calc(100% / 3);
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
					<tr>
						<td>1</td>
						<td><a class="walfarework_btn"
							href="work_detail">길복순</a>
						</td>
						<td><a class="confirm_btn" href="">승인</a></td>
					</tr>
					<tr>
						<td>2</td>
						<td><a class="walfarework_btn"
							href="work_detail">홍길동</a>
						</td>
						<td><a class="confirm_btn" href="">승인</a></td>
					</tr>
					<tr>
						<td>3</td>
						<td><a class="walfarework_btn"
							href="work_detail">홍길동</a>
						</td>
						<td><a class="confirm_btn" href="">승인</a></td>
					</tr>
					<tr>
						<td>4</td>
						<td><a class="walfarework_btn"
							href="work_detail">홍길동</a>
						</td>
						<td><a class="confirm_btn" href="">승인</a></td>
					</tr>
					<tr>
						<td>5</td>
						<td><a class="walfarework_btn"
							href="work_detail">홍길동</a>
						</td>
						<td><a class="confirm_btn" href="">승인</a></td>
					</tr>
					<tr>
						<td>6</td>
						<td><a class="walfarework_btn"
							href="work_detail">홍길동</a>
						</td>
						<td><a class="confirm_btn" href="">승인</a></td>
					</tr>
					<tr>
						<td>7</td>
						<td><a class="walfarework_btn"
							href="work_detail">홍길동</a>
						</td>
						<td><a class="confirm_btn" href="">승인</a></td>
					</tr>
					<tr>
						<td>8</td>
						<td><a class="walfarework_btn"
							href="work_detail">홍길동</a>
						</td>
						<td><a class="confirm_btn" href="">승인</a></td>
					</tr>
					<tr>
						<td>9</td>
						<td><a class="walfarework_btn"
							href="work_detail">홍길동</a>
						</td>
						<td><a class="confirm_btn" href="">승인</a></td>
					</tr>
					<tr>
						<td>10</td>
						<td><a class="walfarework_btn"
							href="work_detail">홍길동</a>
						</td>
						<td><a class="confirm_btn" href="">승인</a></td>
					</tr>
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