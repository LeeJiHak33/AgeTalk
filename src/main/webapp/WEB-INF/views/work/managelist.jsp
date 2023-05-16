<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>매칭 관리 리스트</title>
	<!--파비콘-->


	 <link rel="shortcut icon" href="../resources/image/favicon/favicon.ico">

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
	<link rel="stylesheet" href="../../../resources/css/main.css">
	<link rel="stylesheet" href="../../../resources/css/header.css">
	<link rel="stylesheet" href="../../../resources/css/list.css" />
	<link rel="stylesheet" href="../../../resources/css/pagenation.css">
	
</head>
	<script>
		 $(document).ready(function () {
    $(".popup").click(function () {
      console.log("팝업");
      window.open(
        "../chatting",
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
	
	<div class="sub_image">
		<header>
					<div class="logo_wrap">
					  <a href="../"><img src="../../../resources/image/agetalk_logo.png" alt="logo" /></a>
					</div>
					<div class="menu_wrap">
					  <ul class="menu_list" style="margin-bottom: 0; padding-left: 0;">
						<li><a href="">소개</a></li>
						<li>
						  <a href="">관리</a>
						  <ul class="sub_list" style="padding-top: 20px; padding-left: 0;">
							<li class="sub_menu"><a href="../work/youthlist">사용자 관리</a></li>
							<li class="sub_menu"><a href="../work/managelist">매칭 관리</a></li>
						  </ul>
						</li>
						<li><a href="">고객센터</a></li>
					  </ul>
					</div>
					<div class="login_wrap">
					  <a href="">복지사 이름</a>
					</div>
				  </header>
		<h1>매칭 관리</h1>
	</div>
	


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
									<div id="progress-bar1" class="progress-bar" role="progressbar" aria-valuemin="0" aria-valuemax="100">
										<div id="progress-value">20<span>%</span></div>
									</div>
								</div>
								<script>
									const progressBar = document.querySelector('#progress-bar1');
									if (progressBar) {
										progressBar.style.width = '100%';
										progressBar.style.transition = 'width 2s ease-out-in';
							
										const number = parseInt(document.querySelector('#progress-value').innerText);
										progressBar.style.width = number "%";
							
										if (number >= 80) {
											progressBar.style.backgroundColor = '#ff0000';
										} else if (number >= 50) {
											progressBar.style.backgroundColor = '#ffea00';
										} else {
											progressBar.style.backgroundColor = '#0040ff';
										}
									}
								
								</script>
							</td>
							<td>이화랑</td>
							<td>
								<div class="progress">
									<div id="progress-bar2" class="progress-bar" role="progressbar" aria-valuemin="0" aria-valuemax="100">
										<div id="progress-value2">80<span>%</span></div>
									</div>
								</div>
								<script>
								const progressBar = document.querySelector('#progress-bar1');
								if (progressBar) {
									progressBar.style.width = '100%';
									progressBar.style.transition = 'width 2s ease-out-in';
						
									const number = parseInt(document.querySelector('#progress-value').innerText);
									progressBar.style.width = number + "%";
						
									if (number >= 80) {
										progressBar.style.backgroundColor = '#ff0000';
									} else if (number >= 50) {
										progressBar.style.backgroundColor = '#ffea00';
									} else {
										progressBar.style.backgroundColor = '#0040ff';
									}
								}
								</script>
							</td>
					<td><a class="popup" style="text-decoration: none; cursor: pointer;">채팅 바로가기</a></td>
					<td><button class="unlock_btn">매칭해제</button></td>
				</tr>

				<tr>
					<td>김갑수</td>
					<td>
						<div class="progress">
							<div class="progress-bar" role="progressbar"
								style="width: 50%; background-color: #ffea00" aria-valuenow="25"
								aria-valuemin="0" aria-valuemax="100">50%
							</div>
						</div>
					</td>
					<td>최화랑</td>
					<td>
						<div class="progress">
							<div class="progress-bar" role="progressbar"
								style="width: 90%; background-color: #ff0000" aria-valuenow="100"
								aria-valuemin="0" aria-valuemax="100">90%</div>
						</div>
					</td>
					<td><a class="popup" style="text-decoration: none; cursor: pointer;">채팅 바로가기</a></td>
					<td><button class="unlock_btn">매칭해제</button></td>
				</tr>
				<tr>
					<td>김진수</td>
					<td>
						<div class="progress">
							<div class="progress-bar" role="progressbar"
								style="width: 25%; background-color: #0040ff" aria-valuenow="100"
								aria-valuemin="0" aria-valuemax="100">25%</div>
						</div>
					</td>
					<td>이화랑</td>
					<td>
						<div class="progress">
							<div class="progress-bar" role="progressbar"
								style="width: 90%; background-color: #ff0000" aria-valuenow="100"
								aria-valuemin="0" aria-valuemax="100">90%</div>

						</div>
					</td>
					<td><a class="popup" style="text-decoration: none; cursor: pointer;">채팅 바로가기</a></td>
					<td><button class="unlock_btn">매칭해제</button></td>
				</tr>
				<tr>
					<td>김갑수</td>
					<td>
						<div class="progress">
							<div class="progress-bar" role="progressbar"
								style="width: 50%; background-color: #ffea00" aria-valuenow="25"
								aria-valuemin="0" aria-valuemax="100">50%
							</div>
						</div>
					</td>
					<td>최화랑</td>
					<td>
						<div class="progress">
							<div class="progress-bar" role="progressbar"
								style="width: 90%; background-color: #ff0000" aria-valuenow="100"
								aria-valuemin="0" aria-valuemax="100">90%</div>
						</div>
					</td>
					<td><a class="popup" style="text-decoration: none; cursor: pointer;">채팅 바로가기</a></td>
					<td><button class="unlock_btn">매칭해제</button></td>
				</tr>
				<tr>
					<td>김진수</td>
					<td>
						<div class="progress">
							<div class="progress-bar" role="progressbar"
								style="width: 25%; background-color: #0040ff" aria-valuenow="100"
								aria-valuemin="0" aria-valuemax="100">25%</div>
						</div>
					</td>
					<td>이화랑</td>
					<td>
						<div class="progress">
							<div class="progress-bar" role="progressbar"
								style="width: 90%; background-color: #ff0000" aria-valuenow="100"
								aria-valuemin="0" aria-valuemax="100">90%</div>

						</div>
					</td>
					<td><a class="popup" style="text-decoration: none; cursor: pointer;">채팅 바로가기</a></td>
					<td><button class="unlock_btn">매칭해제</button></td>
				</tr>
				<tr>
					<td>김갑수</td>
					<td>
						<div class="progress">
							<div class="progress-bar" role="progressbar"
								style="width: 50%; background-color: #ffea00" aria-valuenow="25"
								aria-valuemin="0" aria-valuemax="100">50%
							</div>
						</div>
					</td>
					<td>최화랑</td>
					<td>
						<div class="progress">
							<div class="progress-bar" role="progressbar"
								style="width: 90%; background-color: #ff0000" aria-valuenow="100"
								aria-valuemin="0" aria-valuemax="100">90%</div>
						</div>
					</td>
					<td><a class="popup" style="text-decoration: none; cursor: pointer;">채팅 바로가기</a></td>
					<td><button class="unlock_btn">매칭해제</button></td>
				</tr>
				<tr>
					<td>김진수</td>
					<td>
						<div class="progress">
							<div class="progress-bar" role="progressbar"
								style="width: 25%; background-color: #0040ff" aria-valuenow="100"
								aria-valuemin="0" aria-valuemax="100">25%</div>
						</div>
					</td>
					<td>이화랑</td>
					<td>
						<div class="progress">
							<div class="progress-bar" role="progressbar"
								style="width: 90%; background-color: #ff0000" aria-valuenow="100"
								aria-valuemin="0" aria-valuemax="100">90%</div>

						</div>
					</td>
					<td><a class="popup" style="text-decoration: none; cursor: pointer;">채팅 바로가기</a></td>
					<td><button class="unlock_btn">매칭해제</button></td>
				</tr>
				<tr>
					<td>김갑수</td>
					<td>
						<div class="progress">
							<div class="progress-bar" role="progressbar"
								style="width: 50%; background-color: #ffea00" aria-valuenow="25"
								aria-valuemin="0" aria-valuemax="100">50%
							</div>
						</div>
					</td>
					<td>최화랑</td>
					<td>
						<div class="progress">
							<div class="progress-bar" role="progressbar"
								style="width: 90%; background-color: #ff0000" aria-valuenow="100"
								aria-valuemin="0" aria-valuemax="100">90%</div>
						</div>
					</td>
					<td><a class="popup" style="text-decoration: none; cursor: pointer;">채팅 바로가기</a></td>
					<td><button class="unlock_btn">매칭해제</button></td>
				</tr>
				<tr>
					<td>김진수</td>
					<td>
						<div class="progress">
							<div class="progress-bar" role="progressbar"
								style="width: 25%; background-color: #0040ff" aria-valuenow="100"
								aria-valuemin="0" aria-valuemax="100">25%</div>
						</div>
					</td>
					<td>이화랑</td>
					<td>
						<div class="progress">
							<div class="progress-bar" role="progressbar"
								style="width: 90%; background-color: #ff0000" aria-valuenow="100"
								aria-valuemin="0" aria-valuemax="100">90%</div>

						</div>
					</td>
					<td><a class="popup" style="text-decoration: none; cursor: pointer;">채팅 바로가기</a></td>
					<td><button class="unlock_btn">매칭해제</button></td>
				</tr>
				
				<tr>
					<td>이화랑</td>
					<td>
						<div class="progress">
							<div class="progress-bar" role="progressbar"
								style="width: 90%; background-color: #ff0000" aria-valuenow="100"
								aria-valuemin="0" aria-valuemax="100">90%</div>

						</div>
					</td>
					<td>매칭 상대가 없습니다.</td>
				
					
					<td><div class="progress">
						<div class="progress-bar" role="progressbar"
							style="width: 00%; background-color: #ffff" aria-valuenow="0"
							aria-valuemin="0" aria-valuemax="100">0%</div>
							</div>
							</td>	
					<td>진행중인 채팅이 없습니다.</td>
					
					<td><a href="../work/youthlist"><button class="youthlist_btn">매칭하기</button></a>
					</td>
						
					
					
					
				
				</tr>
			
			</table>
			</tbody>
			<div class="btn_area">
				<a href="../work/maninsert" class="button">
				  <span class="btn_write">사용자 등록</span>
				</a>				
			  </div>
		


			</div>
</div>

		
			<jsp:include page="../../../WEB-INF/views/pagenation.jsp"></jsp:include>
		
		
		
<div>
		<jsp:include page="../footer.jsp"></jsp:include>
	</div>
	
</body>

</html>
