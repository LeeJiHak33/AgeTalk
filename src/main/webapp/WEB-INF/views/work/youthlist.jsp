<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>사용자 관리</title>
	
<!--파비콘-->
    <link rel="shortcut icon" href="/resources/image/favicon/favicon.ico">

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
	<link rel="stylesheet" href="/resources/css/main.css">
	<link rel="stylesheet" href="/resources/css/list.css" />
	
<style>
	header{
	position: relative !important;
	}
	header .menu_wrap .menu_list {
	margin-bottom: 0 !important; 
	
	padding-left: 0 !important;
	}
	header .menu_wrap .sub_list{
	padding-top: 20px !important;
	padding-left: 0 !important;
	}
	</style>
</head>
<body>
	<div>
		<div class="tle">
			<div class="sub_image">
			<jsp:include page="./header.jsp"></jsp:include>						
				<h1>사용자 관리</h1>
			</div>	
		</div>
		<div class="sub_tle">
			
			<div class="y_list">
				
				<table border="1" class="table table-sm  table-hover">
					<thead>
						<tr>
							<th>청년</th>
							<th>우울도</th>
							<th>연락처</th>
							<th>매칭</th>
						</tr>
					</thead>

					<tbody id="list" class="table-group-divider">
					<c:if test="${list.size() < 1 }">
					<tr class="">
						<td colspan="5">등록된 게시글이 없습니다.</td>
					</tr>
				</c:if>
				
	<c:forEach items="${list}" var="item">
    <tr>
        <td data-table="name">${item.name}</td>
        <td>
            <div class="progress" data-table="hyp">
                <div id="my_div" class="progress-bar" role="progressbar" aria-valuemin="0" aria-valuemax="100">
                    <div>${item.hyp}<span>%</span></div>
                </div>
            </div>
        </td>
        <td data-table="phone">${item.phone}</td>
        <td><a href="../../work/youthlist/${item.id}"><button class="del_btn">매칭하기</button></a></td>
    </tr>
</c:forEach>
</table>
<script>
    const progressBarList = document.querySelectorAll('.progress-bar');
    progressBarList.forEach(progressBar => {
        progressBar.style.width = '100%';
        progressBar.style.transition = 'width 3s ease-out-in';

        const number = parseInt(progressBar.querySelector('div').innerText);
        progressBar.style.width = number + "%";

        if (number >= 80) {
            progressBar.style.backgroundColor = '#ff0000';
        } else if (number >= 50) {
            progressBar.style.backgroundColor = '#ffea00';
        } else {
            progressBar.style.backgroundColor = '#0040ff';
        }
    });
</script>
	
 

			</div>
</div>

		
			<jsp:include page="../pagenation.jsp"></jsp:include>
		
		</div>	
		
<div>
		<jsp:include page="../footer.jsp"></jsp:include>
	</div>
	
</body>

</html>