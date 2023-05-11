<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>매칭 관리 리스트</title>
	<!--파비콘-->
<link rel="shortcut icon" href="../image/favicon/favicon.ico"> <!--추가-->
<link rel="apple-touch-icon" sizes="180x180" href="../image/favicon/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"  href="../image/favicon/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="../image/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="../image/favicon/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="../image/favicon/favicon-16x16.png">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="../image/favicon/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
	<link rel="stylesheet" href="../css/main.css">
	<link rel="stylesheet" href="../include/footer/footer.css">
	<link rel="stylesheet" href="../include/header/header.css" />
	<link rel="stylesheet" href="../css/list.css" />
	<link rel="stylesheet" href="../include/index.css" />
	<link rel="stylesheet" href="../include/pagenation/pagenation.css">
	
	<script>
		 $(document).ready(function () {
    $(".popup").click(function () {
      console.log("팝업");
      window.open(
        "../User/chatting/chatting.html",
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
	<div class="sub_image">
		<header>
			<div class="logo_wrap">
			  <a href="../User/main.html"><img src="../image/agetalk_logo.png" alt="logo" /></a>
			</div>
			<div class="menu_wrap">
			  <ul class="menu_list" style="margin-bottom: 0; padding-left: 0;">
				<li><a href="">소개</a></li>
				<li>
				  <a href="">관리</a>
				  <ul class="sub_list" style="padding-top: 20px; padding-left: 0;">
					<li class="sub_menu"><a href="../WelfareWork/youthlist.html">사용자 관리</a></li>
					<li class="sub_menu"><a href="../WelfareWork/managelisttest.html">매칭 관리</a></li>
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
										progressBar.style.width = `${number}%`;
							
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
									const progressBar2 = document.querySelector('#progress-bar2');
									if (progressBar2) {
										progressBar2.style.width = '100%';
										progressBar2.style.transition = 'width 0.5s ease-in-out';
							
										const number = parseInt(document.querySelector('#progress-value2').innerText);
										progressBar2.style.width = `${number}%`;
							
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
								
					<td>진행중인 채팅이 없습니다.</td>
					<div><td><a href=youthlist.html><button class="youthlist_btn">매칭하기</button></a></td></div>	
					
					</td>
					
				
				</tr>
			</div>
			</table>
			</tbody>
			<div class="btn_area">
				<a href="../WelfareWork/managelist_insert.html" class="button">
				  <span class="btn_write">사용자 등록</span>
				</a>				
			  </div>
			  
			  
<tfoot>
	<tr>
		<td colspan="6">
			<div class="pagenation_wrap">
				<ul class="pagenation">
					<li class="page"><a href="">&lt;&lt;</a></li>
					<li class="page"><a href="">&lt;</a></li>
					<li class="page"><a class="active" href="">1</a></li>
					<li class="page"><a href="">2</a></li>
					<li class="page"><a href="">3</a></li>
					<li class="page"><a href="">4</a></li>
					<li class="page"><a href="">5</a></li>
					<li class="page"><a href="">&gt;</a></li>
					<li class="page"><a href="">&gt;&gt;</a></li>
				</ul>

			</div>
		</td>
	</tr>
</tfoot>


</div>






<div>
<footer>
	<div class="footer_wrap">
		<div class="footer_logo_wrap">
			<img src="../image/footer_logo.png" alt="footer_logo" />
		</div>
		<div class="footer_text_wrap">
			<p>Copyright 2023. AgeTalk All right reserved.</p>
		</div>
	</div>
</footer>
</div>
</div>
</body>
</html>
