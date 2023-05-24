<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>우울도 진단</title>

<link rel="shortcut icon" href="/resources/image/favicon/favicon.ico" />
<link rel="stylesheet" href="/resources/css/diagnosis.css" />
<link rel="stylesheet" href="/resources/css/index.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<script src="/resources/js/diagnosis.js"></script>

</head>

<body>
	<div class="layout">
		<div class="banner">
			<jsp:include page="header.jsp"></jsp:include>
			<div class="inner_banner">
				<h2>우울도 진단</h2>
				<p>Depression Diagnosis</p>
			</div>
		</div>
		<section class="container">
			<div class="content" id="content">
				<div class="wrapper">
					
					<div class="title">
						<h2>우울도 자가진단 검사지</h2>
					</div>
					<article class="area_diagnosis area_diagnosis01">
						<p>
							다음의 각 내용은 지난 2주일 동안 상태에대한 질문입니다.<br /> 천천히 읽으시고 <span>이와
								같은 일들을 지난 2주일 동안 얼마나 자주 방해를 받았는지</span> 선택하시면 됩니다.<br /> 제한시간이 없기는 하나,
							문장을 읽으시고 해당되는 내용을 <span>직관적으로 바로바로</span> 고르시면 됩니다.
						</p>
						<table class="label_text">
							<colgroup>
								<col style="width: 5%" />
								<col style="width: 70%" />
								<col style="width: 0%" />
								<col style="width: 0%" />
								<col style="width: 0%" />
								<col />
							</colgroup>
							<thead>
								<tr>
									<th>No</th>
									<th>내용</th>
									<th>전혀<br />방해받지<br />않았다
									</th>
									<th>며칠동안<br />방해<br />받았다
									</th>
									<th>7일이상<br />방해<br />받았다
									</th>
									<th>거의<br />매일<br />방해받았다
									</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>일 또는 여가 활동을 하는 데 흥미나 즐거움을 느끼지 못함</td>
									<td class="tac"><input type="radio" id="b1_1" name="hyp1"
										value=0 /><label for="b1_1"><span></span></label>
									</td>
									<td class="tac"><input type="radio" id="b1_2" name="hyp1"
										value=1 /><label for="b1_2"><span></span></label>
									</td>
									<td class="tac"><input type="radio" id="b1_3" name="hyp1"
										value=2 /><label for="b1_3"><span></span></label>
									</td>
									<td class="tac"><input type="radio" id="b1_4" name="hyp1"
										value=3 /><label for="b1_4"><span></span></label>
									</td>
								</tr>
								<tr>
									<td>2</td>
									<td>기분이 가라앉거나, 우울하거나, 희망이 없음</td>
									<td class="tac"><input type="radio" id="b2_1" name="hyp2"
										value=0 /><label for="b2_1"><span></span></label>
									</td>
									<td class="tac"><input type="radio" id="b2_2" name="hyp2"
										value=1 /><label for="b2_2"><span></span></label>
									</td>
									<td class="tac"><input type="radio" id="b2_3" name="hyp2"
										value=2 /><label for="b2_3"><span></span></label>
									</td>
									<td class="tac"><input type="radio" id="b2_4" name="hyp2"
										value=3 /><label for="b2_4"><span></span></label>
									</td>
								</tr>
								<tr>
									<td>3</td>
									<td>잠이 들거나 계속 잠을 자는 것이 어려움, 또는 잠을 너무 많이 잠</td>
									<td class="tac"><input type="radio" id="b3_1" name="hyp3"
										value=0 /><label for="b3_1"><span></span></label>
									</td>
									<td class="tac"><input type="radio" id="b3_2" name="hyp3"
										value=1 /><label for="b3_2"><span></span></label>
									</td>
									<td class="tac"><input type="radio" id="b3_3" name="hyp3"
										value=2 /><label for="b3_3"><span></span></label>
									</td>
									<td class="tac"><input type="radio" id="b3_4" name="hyp3"
										value=3 /><label for="b3_4"><span></span></label>
									</td>
								</tr>
								<tr>
									<td>4</td>
									<td>피곤하다고 느끼거나 기운이 거의 없음</td>
									<td class="tac"><input type="radio" id="b4_1" name="hyp4"
										value=0 /><label for="b4_1"><span></span></label>
									</td>
									<td class="tac"><input type="radio" id="b4_2" name="hyp4"
										value=1 /><label for="b4_2"><span></span></label>
									</td>
									<td class="tac"><input type="radio" id="b4_3" name="hyp4"
										value=2 /><label for="b4_3"><span></span></label>
									</td>
									<td class="tac"><input type="radio" id="b4_4" name="hyp4"
										value=3 /><label for="b4_4"><span></span></label>
									</td>
								</tr>
								<tr>
									<td>5</td>
									<td>입맛이 없거나 과식을 함</td>
									<td class="tac"><input type="radio" id="b5_1" name="hyp5"
										value=0 /><label for="b5_1"><span></span></label>
									</td>
									<td class="tac"><input type="radio" id="b5_2" name="hyp5"
										value=1 /><label for="b5_2"><span></span></label>
									</td>
									<td class="tac"><input type="radio" id="b5_3" name="hyp5"
										value=2 /><label for="b5_3"><span></span></label>
									</td>
									<td class="tac"><input type="radio" id="b5_4" name="hyp5"
										value=3 /><label for="b5_4"><span></span></label>
									</td>
								</tr>
								<tr>
									<td>6</td>
									<td>자신을 부정적으로 봄 - 혹은 자신이 실패자라고 느끼거나 자신 또는 가족을 실망시킴</td>
									<td class="tac"><input type="radio" id="b6_1" name="hyp6"
										value=0 /><label for="b6_1"><span></span></label>
									</td>
									<td class="tac"><input type="radio" id="b6_2" name="hyp6"
										value=1 /><label for="b6_2"><span></span></label>
									</td>
									<td class="tac"><input type="radio" id="b6_3" name="hyp6"
										value=2 /><label for="b6_3"><span></span></label>
									</td>
									<td class="tac"><input type="radio" id="b6_4" name="hyp6"
										value=3 /><label for="b6_4"><span></span></label>
									</td>
								</tr>
								<tr>
									<td>7</td>
									<td>신문을 읽거나 텔레비전 보는 것과 같은 일에 집중하는 것이 어려움</td>
									<td class="tac"><input type="radio" id="b7_1" name="hyp7"
										value=0 /><label for="b7_1"><span></span></label>
									</td>
									<td class="tac"><input type="radio" id="b7_2" name="hyp7"
										value=1 /><label for="b7_2"><span></span></label>
									</td>
									<td class="tac"><input type="radio" id="b7_3" name="hyp7"
										value=2 /><label for="b7_3"><span></span></label>
									</td>
									<td class="tac"><input type="radio" id="b7_4" name="hyp7"
										value=3 /><label for="b7_4"><span></span></label>
									</td>
								</tr>
								<tr>
									<td>8</td>
									<td>다른 사람들이 주목할 정도로 너무 느리게 움직이거나 말을 함. 또는 반대로 평상시보다 많이
										움직여서, 너무 안절부절 못하거나 들떠있음</td>
									<td class="tac"><input type="radio" id="b8_1" name="hyp8"
										value=0 /><label for="b8_1"><span></span></label>
									</td>
									<td class="tac"><input type="radio" id="b8_2" name="hyp8"
										value=1 /><label for="b8_2"><span></span></label>
									</td>
									<td class="tac"><input type="radio" id="b8_3" name="hyp8"
										value=2 /><label for="b8_3"><span></span></label>
									</td>
									<td class="tac"><input type="radio" id="b8_4" name="hyp8"
										value=3 /><label for="b8_4"><span></span></label>
									</td>
								</tr>
								<tr>
									<td>9</td>
									<td>자신이 죽는 것이 더 낫다고 생각하거나 어떤식으로든 자신을 해칠 것이라고 생각함</td>
									<td class="tac"><input type="radio" id="b9_1" name="hyp9"
										value=0 /><label for="b9_1"><span></span></label>
									</td>
									<td class="tac"><input type="radio" id="b9_2" name="hyp9"
										value=1 /><label for="b9_2"><span></span></label>
									</td>
									<td class="tac"><input type="radio" id="b9_3" name="hyp9"
										value=2 /><label for="b9_3"><span></span></label>
									</td>
									<td class="tac"><input type="radio" id="b9_4" name="hyp9"
										value=3 /><label for="b9_4"><span></span></label>
									</td>
								</tr>
							</tbody>
						</table>

						
					</article>
					
				</div>
				
			</div>
			<div class="diagnosis_bottom">
				<div class="btn_box">
					<form method="post" name="diagnosis_form">
					<input id="total" type="hidden" name="hyp" value="" />
					<input id="total" type="hidden" name="inspection" value=1 />
					
					<button type="button" class="sub_btn" id="btn_sub"
					style=" font-family: 'NotosansKR';
							width: 200px;
							height: 74px;
							line-height: 54px;
							font-size: 20px;
							color: white;
							background-color: #fe8e8d;
							border-radius: 45px;
							cursor: pointer;
							border: none;">결과전송</button>
					</form>
				</div>
			</div>
		</section>
		
		<jsp:include page="../footer.jsp"></jsp:include>
	</div>
</body>
</html>
