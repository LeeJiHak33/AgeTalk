<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채팅</title>
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="/resources/js/chatting.js"></script>
    <link rel="stylesheet" href="/resources/css/chatting.css" />
    <link rel="stylesheet" href="/resources/css/index.css" />
    <link rel="shortcut icon" href="/resources/image/favicon/favicon.ico"> <!--추가-->
    <style type="text/css">
	.off{
		
	}
	.speaker_btn span{
		display:none;
	}
</style>
</head>
<body>
<header>
		<div class="header_wrap">
			<div></div>
			<div class="title_wrap">
				<p>채팅</p>
			</div>
			<div class="search_btn_wrap">
				<button class="search_btn"></button>
			</div>
		</div>
		<div class="search_wrap" style="display: none">
			<div class="search_inner">
				<form class="search_form" action="">
					<span class="search_icon"></span> <input type="text"
						class="inner_search" />
				</form>
			</div>
			<button class="up_btn"></button>
			<button class="down_btn"></button>
			<input type="date" id="date" style="visibility: hidden;">
			<button class="close"></button>
	</header>
	<div class="layout">
		<audio id="audioContainer"> <!-- audio play를 위함 -->
        	<source id="audioSource" src="" /> <!-- audio 파일 -->
        	Your browser does not support the audio format.
      	</audio>
		<div class="chatting_list">
			<c:forEach items="${list }" var="item" varStatus="status_item">
				<c:if test="${list.size()<= 1 }">
					<div class="date_wrap">
						<div class="date">	
							<p><fmt:formatDate  value="${item.date}" pattern="yyyy.MM.dd" /></p>
						</div>
					</div>
				</c:if>
				<c:if test="${list.size()>= 2 }">
					<c:if test="${status_item.count==1}">
						<div class="date_wrap">
							<div class="date">	
								<p><fmt:formatDate  value="${item.date}" pattern="yyyy.MM.dd" /></p>
							</div>
						</div>
					</c:if>
					<c:if test="${status_item.count >= 2 }">
						<fmt:formatDate var="prev_date" value="${list.get(status_item.count-2).date}" pattern="yyyy.MM.dd" />
						<fmt:formatDate var="now_date" value="${item.date}" pattern="yyyy.MM.dd" />
						<c:if test="${prev_date != now_date }">
							<div class="date_wrap">
								<div class="date">	
									<p><fmt:formatDate  value="${item.date}" pattern="yyyy.MM.dd" /></p>
								</div>
							</div>
						</c:if>
					</c:if>
				</c:if>
				<c:if test="${item.status == 1 }">
					<div class="other_chatting_wrap">
					<div class="other_chatting">
				
						<p>${item.content }</p>
					</div>
					<c:if test="${item.attach != null }">
						<button class="speaker_btn"><span>${item.attach }</span></button>
					</c:if>
					
				</div>
				</c:if>
				<c:if test="${item.status == 0 }">
					<div class="my_chatting_wrap">
					<div class="my_chatting">
						<p>${item.content }</p>
					</div>
				</div>
				</c:if>
				
			</c:forEach>
		</div>
	</div>
</body>
</html>