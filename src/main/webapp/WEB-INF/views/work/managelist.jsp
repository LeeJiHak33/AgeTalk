<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
    $(".popup").click(function () {
      console.log("팝업");
      window.open(
        "../work/chatting",
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
						<tr>
							<td>김진수</td>
							<td>
								<div class="progress">
									<div id="progress-bar1" class="progress-bar" role="progressbar"
										aria-valuemin="0" aria-valuemax="100">
										<div id="progress-value1">
											25<span>%</span>
										</div>
									</div>
								</div> <script>
									const progressBar1 = document.querySelector('#progress-bar1');
									if (progressBar1) {
										progressBar1.style.width = '100%';
										progressBar1.style.transition = 'width 2s ease-out-in';
							
										const number = parseInt(document.querySelector('#progress-value1').innerText);
										progressBar1.style.width = number + "%";
							
										if (number >= 80) {
											progressBar1.style.backgroundColor = '#ff0000';
										} else if (number >= 50) {
											progressBar1.style.backgroundColor = '#ffea00';
										} else {
											progressBar1.style.backgroundColor = '#0040ff';
										}
									}
								
								</script>
							</td>
							<td>이화랑</td>
							<td>
								<div class="progress">
									<div id="progress-bar2" class="progress-bar" role="progressbar"
										aria-valuemin="0" aria-valuemax="100">
										<div id="progress-value2">
											80<span>%</span>
										</div>
									</div>
								</div> <script>
								const progressBar2 = document.querySelector('#progress-bar2');
								if (progressBar2) {
									progressBar2.style.width = '100%';
									progressBar2.style.transition = 'width 2s ease-out-in';
						
									const number = parseInt(document.querySelector('#progress-value2').innerText);
									progressBar2.style.width = number + "%";
						
									if (number >= 80) {
										progressBar2.style.backgroundColor = '#ff0000';
									} else if (number >= 50) {
										progressBar2.style.backgroundColor = '#ffea00';
									} else {
										progressBar2.style.backgroundColor = '#0040ff';
									}
								}
								</script>
							</td>
							<td><a class="popup"
								style="text-decoration: none; cursor: pointer;">채팅 바로가기</a></td>
							<td><button class="unlock_btn">매칭해제</button></td>
						</tr>

						<tr>
							<td>김갑수</td>
							<td>
								<div class="progress">
									<div class="progress-bar" role="progressbar"
										style="width: 50%; background-color: #ffea00"
										aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">50%
									</div>
								</div>
							</td>
							<td>최화랑</td>
							<td>
								<div class="progress">
									<div class="progress-bar" role="progressbar"
										style="width: 90%; background-color: #ff0000"
										aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">90%</div>
								</div>
							</td>
							<td><a class="popup"
								style="text-decoration: none; cursor: pointer;">채팅 바로가기</a></td>
							<td><button class="unlock_btn">매칭해제</button></td>
						</tr>
						<tr>
							<td>김진수</td>
							<td>
								<div class="progress">
									<div class="progress-bar" role="progressbar"
										style="width: 25%; background-color: #0040ff"
										aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">25%</div>
								</div>
							</td>
							<td>이화랑</td>
							<td>
								<div class="progress">
									<div class="progress-bar" role="progressbar"
										style="width: 90%; background-color: #ff0000"
										aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">90%</div>

								</div>
							</td>
							<td><a class="popup"
								style="text-decoration: none; cursor: pointer;">채팅 바로가기</a></td>
							<td><button class="unlock_btn">매칭해제</button></td>
						</tr>
						<tr>
							<td>김갑수</td>
							<td>
								<div class="progress">
									<div class="progress-bar" role="progressbar"
										style="width: 50%; background-color: #ffea00"
										aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">50%
									</div>
								</div>
							</td>
							<td>최화랑</td>
							<td>
								<div class="progress">
									<div class="progress-bar" role="progressbar"
										style="width: 90%; background-color: #ff0000"
										aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">90%</div>
								</div>
							</td>
							<td><a class="popup"
								style="text-decoration: none; cursor: pointer;">채팅 바로가기</a></td>
							<td><button class="unlock_btn">매칭해제</button></td>
						</tr>
						<tr>
							<td>김진수</td>
							<td>
								<div class="progress">
									<div class="progress-bar" role="progressbar"
										style="width: 25%; background-color: #0040ff"
										aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">25%</div>
								</div>
							</td>
							<td>이화랑</td>
							<td>
								<div class="progress">
									<div class="progress-bar" role="progressbar"
										style="width: 90%; background-color: #ff0000"
										aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">90%</div>

								</div>
							</td>
							<td><a class="popup"
								style="text-decoration: none; cursor: pointer;">채팅 바로가기</a></td>
							<td><button class="unlock_btn">매칭해제</button></td>
						</tr>
						<tr>
							<td>김갑수</td>
							<td>
								<div class="progress">
									<div class="progress-bar" role="progressbar"
										style="width: 50%; background-color: #ffea00"
										aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">50%
									</div>
								</div>
							</td>
							<td>최화랑</td>
							<td>
								<div class="progress">
									<div class="progress-bar" role="progressbar"
										style="width: 90%; background-color: #ff0000"
										aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">90%</div>
								</div>
							</td>
							<td><a class="popup"
								style="text-decoration: none; cursor: pointer;">채팅 바로가기</a></td>
							<td><button class="unlock_btn">매칭해제</button></td>
						</tr>
						<tr>
							<td>김진수</td>
							<td>
								<div class="progress">
									<div class="progress-bar" role="progressbar"
										style="width: 25%; background-color: #0040ff"
										aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">25%</div>
								</div>
							</td>
							<td>이화랑</td>
							<td>
								<div class="progress">
									<div class="progress-bar" role="progressbar"
										style="width: 90%; background-color: #ff0000"
										aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">90%</div>

								</div>
							</td>
							<td><a class="popup"
								style="text-decoration: none; cursor: pointer;">채팅 바로가기</a></td>
							<td><button class="unlock_btn">매칭해제</button></td>
						</tr>
						<tr>
							<td>김갑수</td>
							<td>
								<div class="progress">
									<div class="progress-bar" role="progressbar"
										style="width: 50%; background-color: #ffea00"
										aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">50%
									</div>
								</div>
							</td>
							<td>최화랑</td>
							<td>
								<div class="progress">
									<div class="progress-bar" role="progressbar"
										style="width: 90%; background-color: #ff0000"
										aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">90%</div>
								</div>
							</td>
							<td><a class="popup"
								style="text-decoration: none; cursor: pointer;">채팅 바로가기</a></td>
							<td><button class="unlock_btn">매칭해제</button></td>
						</tr>
						<tr>
							<td>김진수</td>
							<td>
								<div class="progress">
									<div class="progress-bar" role="progressbar"
										style="width: 25%; background-color: #0040ff"
										aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">25%</div>
								</div>
							</td>
							<td>이화랑</td>
							<td>
								<div class="progress">
									<div class="progress-bar" role="progressbar"
										style="width: 90%; background-color: #ff0000"
										aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">90%</div>

								</div>
							</td>
							<td><a class="popup"
								style="text-decoration: none; cursor: pointer;">채팅 바로가기</a></td>
							<td><button class="unlock_btn">매칭해제</button></td>
						</tr>

						<tr>
							<td>이화랑</td>
							<td>
								<div class="progress">
									<div class="progress-bar" role="progressbar"
										style="width: 90%; background-color: #ff0000"
										aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">90%</div>

								</div>
							</td>
							<td>매칭 상대가 없습니다.</td>


							<td><div class="progress">
									<div class="progress-bar" role="progressbar"
										style="width: 00%; background-color: #ffff" aria-valuenow="0"
										aria-valuemin="0" aria-valuemax="100">0%</div>
								</div></td>
							<td>진행중인 채팅이 없습니다.</td>

							<td><a href="../work/youthlist"><button
										class="youthlist_btn">매칭하기</button></a></td>





						</tr>

					</table>
					<jsp:include page="./maninsert.jsp"></jsp:include>						
				</div>

			</div>



		</div>


		<jsp:include page="../pagenation.jsp"></jsp:include>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>

</html>
