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
<link rel="stylesheet" href="/resources/css/index.css" />
<link rel="stylesheet" href="/resources/css/pagenation.css" />
<title>Document</title>
</head>
<body>

	<!-- <div class="pagenation_wrap">
		<ul class="pagenation" style="padding-left: 0;">
			<li class="page"><a href="">&lt;&lt;</a></li>
			<li class="page"><a href="">&lt;</a></li>
			<li class="page"><a class="active2" href="">1</a></li>
			<li class="page"><a href="">2</a></li>
			<li class="page"><a href="">3</a></li>
			<li class="page"><a href="">4</a></li>
			<li class="page"><a href="">5</a></li>
			<li class="page"><a href="">&gt;</a></li>
			<li class="page"><a href="">&gt;&gt;</a></li>
		</ul>
	</div> -->

	<div class="pagenation_wrap">
		<ul class="pagenation" style="padding-left: 0;">
			<li class="page">
				<a href="?page=1" class="page">&lt;&lt;</a>
			</li>
			<li class="page">
				<a href="?page=${pager.prev}" class="page">&lt;</a>
			</li>
			
			<c:forEach var="page" items="${pager.list}">
			<li class="page">
				<a href="?page=${page}" class="page-link ${page eq pager.page ? 'active2' : ''}">${page}</a>
			</li>
			</c:forEach>
			
			<li class="page">
				<a href="?page=${pager.next}" class="page">&gt;</a>
			</li>
			<li class="page">
				<a href="?page=${pager.last}" class="page">&gt;&gt;</a>
			</li>
		</ul>
	</div>
</body>
</html>
