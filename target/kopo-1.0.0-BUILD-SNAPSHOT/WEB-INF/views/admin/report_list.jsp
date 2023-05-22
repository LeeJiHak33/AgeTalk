<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

   <link rel="shortcut icon" href="/resources/image/favicon/favicon.ico" />
	<link rel="stylesheet" href="/resources/css/admin_table.css" />
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	<link rel="stylesheet" href="/resources/css/report_list.css" />
    <script src="/resources/js/report_list.js"></script>
    <title>신고페이지</title>
    <style>
      table td,
      table th {
        width: calc(100% / 4);
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
          <p>신고 관리</p>
        </div>
      </div>
      <div class="inner_layout">
        <table>
          <thead>
            <tr>
              <th>번호</th>
              <th>제목</th>
              <th>복지사</th>
              <th>작성일</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>1</td>
              <td><a class="report_title">욕설 신고</a></td>
              <td>길복순</td>
              <td>2022-04-30</td>
            </tr>
            <tr>
              <td>1</td>
              <td><a class="report_title">욕설 신고</a></td>
              <td>길복순</td>
              <td>2022-04-30</td>
            </tr>
            <tr>
              <td>2</td>
              <td><a class="report_title">욕설 신고</a></td>
              <td>길복순</td>
              <td>2022-04-30</td>
            </tr>
            <tr>
              <td>3</td>
              <td><a class="report_title">욕설 신고</a></td>
              <td>길복순</td>
              <td>2022-04-30</td>
            </tr>
            <tr>
              <td>4</td>
              <td><a class="report_title">욕설 신고</a></td>
              <td>길복순</td>
              <td>2022-04-30</td>
            </tr>
            <tr>
              <td>5</td>
              <td><a class="report_title">욕설 신고</a></td>
              <td>길복순</td>
              <td>2022-04-30</td>
            </tr>
            <tr>
              <td>6</td>
              <td><a class="report_title">욕설 신고</a></td>
              <td>길복순</td>
              <td>2022-04-30</td>
            </tr>
            <tr>
              <td>7</td>
              <td><a class="report_title">욕설 신고</a></td>
              <td>길복순</td>
              <td>2022-04-30</td>
            </tr>
            <tr>
              <td>8</td>
              <td><a class="report_title">욕설 신고</a></td>
              <td>길복순</td>
              <td>2022-04-30</td>
            </tr>
            <tr>
              <td>9</td>
              <td><a class="report_title">욕설 신고</a></td>
              <td>길복순</td>
              <td>2022-04-30</td>
            </tr>
            <tr>
              <td>10</td>
              <td><a class="report_title">욕설 신고</a></td>
              <td>길복순</td>
              <td>2022-04-30</td>
            </tr>
          </tbody>
        </table>
        <div class="modal" style="display: none">
          <div class="modal_top">
            <div></div>
            <div class="modal_top_title_wrap">
              <p>신고</p>
            </div>
            <div class="modal_top_btn_wrap">
              <button class="close_btn"></button>
            </div>
          </div>
          <div class="modal_inner_wrap">
            <div class="ttile_wrap">
              <p>제목 :</p>
              <p class="title">욕설 신고</p>
            </div>
            <div class="report_wrap">
              <p>신고 대상 :</p>
              <p class="report">김철수</p>
            </div>
            <div class="content_wrap">
              <p>신고 내용 :</p>
              <p>어르신께 욕설 사용으로 신고 합니다.</p>
            </div>
          </div>
          <div class="btn_wrap">
            <button class="report_btn">신고</button>
            <button class="cancel_btn">취소</button>
          </div>
        </div>
      </div>
		<!-- 페이지네이션 -->
 		<jsp:include page="../pagenation.jsp"></jsp:include>
    </div>
	<!-- 푸터 -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>