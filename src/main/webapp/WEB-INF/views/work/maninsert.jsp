<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

<link rel="stylesheet" href="/resources/css/managelist_insert.css" />

</head>

<body>
	<button type="button" class="btn_update" data-bs-toggle="modal"
		data-bs-target="#add" style="cursor: pointer;">사용자 등록</button>

	<div class="modal fade" id="add" tabindex="-1"
		aria-labelledby="ModalLabel" aria-hidden="true" style="position: none">

		<div class="modal-dialog modal-lg">
			<div class="modal-content" style="top: 50px;">
				<div class="modal-head">
					<div class="modal-header">
						<p class="modal-title text-dark" id="ModalLabel">사용자 등록</p>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>

					<div class="modal-header" style="display: block">


						<p class="modal-title text_gray">사용자 정보</p>
						<div class="info">
							<div class="input-group mb-4">
								<span class="text-dark input-group-text">이름</span> <input
									name="name" type="text" id="name" 
									placeholder="등록하실 어르신의 성함을 입력해주세요." class="form-control">
							</div>

							<div class="input-group mb-4">
								<span class="text-dark input-group-text">점수</span> <input
									name="hyp" type="number" id="hyp"
									placeholder="설문조사 점수를 입력해주세요." class="form-control">
							</div>
							<div class="input-group mb-4">
								<span class="text-dark input-group-text">기기번호</span> <input
									name="sId" type="text" id="sId"
									placeholder="기기의 시리얼 번호를 입력해주세요."
									<%-- value="${item.work_id}" --%> class="form-control">


							</div>
						</div>
					</div>


					<div class="modal-footer">
						<div class="modal_btns">

							<button type="button" class="btn_update" id="modal_submit">사용자
								등록</button>
						</div>
						<script>
	$("#modal_submit").click(function() {
		const form = document.add_form;
		const name = $("#name").val();
		const hyp = $("#hyp").val();
		const s_id = $("#sId").val();
		const work_id = null;

		const data = {
			sId : s_id,
			name : name,
			hyp : hyp,
			work_id : work_id
		};

		if (work_id == null) {
		$.ajax({
				url: "../work/add",
				type: "post",
				data: data,
				success: function(response) {
					alert("등록이 완료되었습니다.");
					$("#add").modal('hide');
					location.reload();
				},
				error: function() {
					alert("에러가 발생했습니다. 잠시 후 다시 시도해주세요.");
					console.log(data);
					console.log("오류");
				}
			});
		} else if (work_id != null) {
			alert("정보가 일치하지 않습니다.");
			return;
		}
	});
</script>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
