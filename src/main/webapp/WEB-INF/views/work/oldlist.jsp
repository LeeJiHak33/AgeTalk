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
	<link rel="stylesheet" href="/resources/css/pagenation.css">
	<link rel="stylesheet" href="/resources/css/modal.css" />
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

			<jsp:include page="header.jsp"></jsp:include>
				

				<h1>사용자 관리</h1>
			</div>	
		</div>
		<div class="sub_tle">
			
			<div class="y_list">
				
				<table border="1" class="table table-sm  table-hover">
					<thead>
						<tr>
							<th>어르신</th>
							<th>우울도</th>							
							<th>관리</th>
						</tr>
					</thead>

					<tbody id="list" class="table-group-divider">
					<c:if test="${list.size() < 1 }">
					<tr class="">
						<td colspan="5">등록된 사용자가 없습니다.</td>
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
        <td><button class="update_btn"
            data-bs-toggle="modal"
            data-bs-target="#oldupdateModal"
            data-info="${item}"
            style=" cursor: pointer;">수정</button><span class="gap"></span><a href="/work/delete/${item.sId}"> <button class="del_btn">삭제</button></a></td>
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
	
	<div class="modal fade"
          id="oldupdateModal"
          tabindex="-1"
          aria-labelledby="ModalLabel"
          aria-hidden="true"
          style="position: none">
          <div class="modal-dialog modal-lg">
            <div class="modal-content" style="top: 50px;">
              <div class="modal-head">
                <div class="modal-header">
                  <p class="modal-title text-dark" id="ModalLabel">
                    정보 수정
                  </p>
                  <button
                    type="button"
                    class="btn-close"
                    data-bs-dismiss="modal"
                    aria-label="Close"
                  ></button>
                </div>
                <div class="modal-header">
                
                  <p class="modal-title text-dark">
                   ${item.name}님 정보 수정하기	                 
                    
                  </p>
                </div>
                <div class="modal-header" style="display: block">
                  <p class="modal-title text_gray">프로필</p>
                  <p class="text-dark nickname" data-table="name">${item.name}</p>
                </div>
                <div class="modal-header" style="display: block">
                  <p class="modal-title text_gray">계정 정보</p>
                  <div class="info">
                  	<div class="input-group mb-4">
                    <span class="text-dark input-group-text">이름</span> 
                    <input name="name" data-table="name" type="text" id="name" value="${item.name}" class="form-control">
                    </div>
                    <div class="input-group mb-4">
                    <span class="text-dark input-group-text">우울도</span> 
                    <input name="hyp" type="number" id="hyp" value="${item.hyp}"  class="form-control">
                    </div>                   
                    <div class="input-group mb-4">
                    <span class="text-dark input-group-text">기기 고유 번호</span> 
                    <input name="sId" type="text" id="sId" value="${item.sId}" class="form-control">
                    </div>                   
					
					
                    </div>
                  </div>
                </div>
                <div class="modal-footer">
                <div class="modal_btns">
                  <button type="button" class="btn_update" id="modal_submit">정보수정</button>                  
              </div>

          
                </div>
              </div>
            </div>
          </div>
         
          <script>          	
          	$("#modal_submit").click(function(){ 
          			const form = document.update_form;
					const name = $("#name").val();
					const hyp = $("#hyp").val();
					const sId = $("#sId").val();
					const work_id = null;
									
					const data = {name : name,
								hyp : hyp,
								sId : sId,
								work_id : work_id
								};
          	
					if(name == null){		
						alert("이름을 입력해주세요.");									
						return;
					} 										
					
					if(sId != null){
					$.ajax({
						url : "/work/update_old/" + sId,
						type : "post",
						data : data,
						success : function(response){
							alert("정보수정이 완료됐습니다.");
							$("#updateModal").modal('hide');
							location.reload();
						},
						error : function(){
							alert("에러가 발생했습니다. 잠시 후 다시 시도해주세요.");
							console.log(data);
							console.log("오류");
						}
					});
					}else if(work_id != null){
						alert("기기고유번호를 입력해주세요.")
						
						return;
					} 
					
				});
          	</script>
</body>

</html>