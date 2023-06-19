<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>매칭 관리 리스트</title>
<!--파비콘-->


<link rel="shortcut icon" href="/resources/image/favicon/favicon.ico">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="/resources/css/main.css">
<link rel="stylesheet" href="/resources/css/list.css" />

</head>
<style>
header {
	position: relative !important;
}

header .menu_wrap .menu_list {
	margin-bottom: 0 !important;
	padding-left: 0 !important;
}

header .menu_wrap .sub_list {
	padding-top: 20px !important;
	padding-left: 0 !important;
}
</style>

<script>
$(document).ready(function () {
    $(".popup").click(function (e) {
    	console.log(e.target.id);
    	const matchId=e.target.id;
      console.log("팝업");
      window.open(
        "../work/chatting/"+matchId,
        "_blank",
        "top=100, left=300, width=430, height=750, toolbar=no, menubar=no, location=no, status=no,  resizable=no"
      ).onresize = (_) => {
        popupWindow.resizeTo(430, 750);
      };
    });
  });
	</script>


</head>
<body>
	<div>
		<div class="tle">
			<div class="sub_image">
				<jsp:include page="./header.jsp"></jsp:include>
				<h1>매칭 관리</h1>
			</div>
		</div>
		<div class="gaptle">
			<div class="sub_tle">
				<div class="manage_list">
					<table border="1" class="table table-sm table-hover">
						<thead>
							<tr>
								<th>어르신</th>
								<th>우울도</th>
								<th>청년</th>
								<th>우울도</th>
								<th>채팅</th>
								<th>관리</th>
							</tr>
						</thead>
						<tbody id="list" class="table-group-divider">
							<c:if test="${list.size() < 1 }">
								<tr class="">
									<td colspan="6">등록된 사용자 없습니다.</td>
								</tr>
							</c:if>
							<c:forEach items="${list}" var="item">
								<tr>

									<td data-table="name">${item.oname}</td>
									<td>
										<div class="progress" data-table="hyp">
											<div id="my_div" class="progress-bar" role="progressbar"
												aria-valuemin="0" aria-valuemax="100">
												<div>${item.ohyp}<span>%</span>
												</div>
											</div>
										</div>
									</td>
									<c:if test="${empty item.yname}">
										<td>매칭 상대가 없습니다.</td>
										<td></td>
										<td>진행중인 채팅이 없습니다</td>
										<td><a href="/${item.oid}/work/youthlist/"><button
													class="youthlist_btn">매칭하기</button></a></td>
									</c:if>
									<c:if test="${not empty item.yname}">
										<td data-table="name">${item.yname}</td>
										<td>
											<div class="progress" data-table="hyp">
												<div id="my_div" class="progress-bar" role="progressbar"
													aria-valuemin="0" aria-valuemax="100">
													<div>${item.yhyp}<span>%</span>
													<td >
														<c:if test="${item.matchid != 0 }">
														
															<a class="popup" id="${item.matchid}">채팅 바로가기</a>
														</c:if>
													</td>
													<td><a href="/${item.matchid}/work/youthlist/delete"><button
													class="del_btn">매칭해제</button></a>
													<a href="/${item.yid}/work/report"><button
													class="youthlist_btn">신고</button></a></td>
													</div>
												</div>
											</div>
										</td>
									</c:if>

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
					<jsp:include page="./maninsert.jsp"></jsp:include>
				</div>

			</div>



		</div>


		<jsp:include page="../pagenation.jsp"></jsp:include>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
	
</body>

</html>
