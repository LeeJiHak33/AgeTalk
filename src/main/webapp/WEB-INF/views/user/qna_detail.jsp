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
	
<script type="text/javascript">

	function display(){
		const tr = document.getElementById("comment");
		
		if(tr.style.display == 'none'){
			tr.style.display = 'block';
		}else{
			tr.style.display = 'none';
		}
		
	}
	
</script>
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
						<td>${item.name}</td>
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
				<tbody id="cmt_tbody">
					<c:if test="${item.cmt != null}">
						<tr>
							<th scope="row"><span
								class="icon"><p class="icon_txt">관리자</p></span></th>
							<td>${item.cmt}</td>
							
							<c:if test="${sessionScope.user.author == 1}">
								<td style="width: 240px;">
									<div class="cmt_btn">
										<button onclick="display()" class="button" style="border:none; font-size: 16px;"><span>수정</span></button>
											<span class="space"></span>
										<a href="comment_delete/${item.cid}" class="button"> <span>삭제</span></a>
									</div>
								</td>
							</c:if>
						</tr>
					</c:if>
					
					<c:if test="${sessionScope.user.author == 1}">
						<c:if test="${item.cmt == null}">
						<tr>
							<th>
								<form method="post" action="../qna_detail/${item.id}">
									<div class="comment">
										<input name="content" type="text" placeholder="답변을 등록해주세요.">
										<button class="button" style="border: none; font-size: 16px;"> <span>등록</span></button>
									</div>
								</form>
							</th>
						</tr>
	
						</c:if>
					</c:if>		
					
					<c:if test="${sessionScope.user.author == 1}">			
						<tr id="comment" style="display:none;">
							<td style="border-bottom: none;">
								<form method="post" action="comment_update/${item.cid}">
									<div class="comment">
										<input type="text" name="content" placeholder="수정할 답변을 입력해주세요.">
										<button class="button" style="border: none; font-size: 16px;"><span>수정하기</span></button>
									</div>
								</form>
							</td>
						</tr>
					</c:if>
				</tbody>
			</table>
			<div class="btn_area">
				<a href="../qna" class="button"> <span>목록</span>
				</a> 
				<c:if test="${sessionScope.user.author == 1 || sessionScope.user.name == item.name}">
					<span class="space"></span>
					 <a href="../qna_update/${item.id}"
						class="button"> <span>수정</span>
					</a> <span class="space"></span>
					<a href="../qna_delete/${item.id}"
						class="button"> <span>삭제</span>
					</a>
				</c:if>
			</div>
		</section>
		<jsp:include page="../footer.jsp"></jsp:include>
	</div>
	
</body>
</html>
