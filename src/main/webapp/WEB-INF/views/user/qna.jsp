<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>

</head>

<body>
	<div class="layout">
		<div class="banner">
			<jsp:include page="../header.jsp"></jsp:include>
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
					<tr class="">
						<td data-table="number">10</td>
						<td data-table="subject"><a href="qna_detail.html">안녕하세요</a>
						</td>
						<td data-table="write">박**</td>
						<td data-table="date">2023-04-12</td>
						<td>답변완료</td>
					</tr>
					<tr class="">
						<td data-table="number">9</td>
						<td data-table="subject"><a
							href="?board_id=board_question&amp;mode=view&amp;no=12">안녕하세요</a>
						</td>
						<td data-table="write">강**</td>
						<td data-table="date">2023-04-06</td>
						<td>답변완료</td>
					</tr>
					<tr class="">
						<td data-table="number">8</td>
						<td data-table="subject"><a
							href="?board_id=board_question&amp;mode=view&amp;no=11">상담요청</a>
						</td>
						<td data-table="write">이**</td>
						<td data-table="date">2023-03-09</td>
						<td>답변완료</td>
					</tr>
					<tr class="">
						<td data-table="number">7</td>
						<td data-table="subject"><a
							href="?board_id=board_question&amp;mode=view&amp;no=13">안녕하세요</a>
						</td>
						<td data-table="write">박**</td>
						<td data-table="date">2023-04-12</td>
						<td>답변완료</td>
					</tr>
					<tr class="">
						<td data-table="number">6</td>
						<td data-table="subject"><a
							href="?board_id=board_question&amp;mode=view&amp;no=12">안녕하세요</a>
						</td>
						<td data-table="write">강**</td>
						<td data-table="date">2023-04-06</td>
						<td>답변완료</td>
					</tr>
					<tr class="">
						<td data-table="number">5</td>
						<td data-table="subject"><a
							href="?board_id=board_question&amp;mode=view&amp;no=11">상담요청</a>
						</td>
						<td data-table="write">이**</td>
						<td data-table="date">2023-03-09</td>
						<td>답변완료</td>
					</tr>
					<tr class="">
						<td data-table="number">4</td>
						<td data-table="subject"><a
							href="?board_id=board_question&amp;mode=view&amp;no=13">안녕하세요</a>
						</td>
						<td data-table="write">박**</td>
						<td data-table="date">2023-04-12</td>
						<td>답변완료</td>
					</tr>
					<tr class="">
						<td data-table="number">3</td>
						<td data-table="subject"><a
							href="?board_id=board_question&amp;mode=view&amp;no=12">안녕하세요</a>
						</td>
						<td data-table="write">강**</td>
						<td data-table="date">2023-04-06</td>
						<td>답변완료</td>
					</tr>
					<tr class="">
						<td data-table="number">2</td>
						<td data-table="subject"><a
							href="?board_id=board_question&amp;mode=view&amp;no=11">상담요청</a>
						</td>
						<td data-table="write">이**</td>
						<td data-table="date">2023-03-09</td>
						<td>답변완료</td>
					</tr>
					<tr class="">
						<td data-table="number">1</td>
						<td data-table="subject"><a
							href="?board_id=board_question&amp;mode=view&amp;no=11">상담요청</a>
						</td>
						<td data-table="write">이**</td>
						<td data-table="date">2023-03-09</td>
						<td>답변완료</td>
					</tr>
				</tbody>
			</table>
			<div class="btn_area">
				<a href="qna_insert" class="button"> <span
					class="btn_write">글쓰기</span>
				</a>
			</div>
			<jsp:include page="../pagenation.jsp"></jsp:include>
		</section>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>
