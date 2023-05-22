$(document).ready(function () {
  $(".close_btn").click(function () {
    $(".modal").css("display", "none");
  });
  $(".cancel_btn").click(function () {
    $(".modal").css("display", "none");
  });
  $(".report_title").click(e => {
   	const item=e.target.closest("tr");
   	const id=item.dataset["id"];
 
   	
 	fetch(`report_detail/${id}`)
 	.then(resp =>{
 		if(resp.status==200){
 			return resp.json()
 		}
 	})
 	.then(result =>{
 	
 		$('.title').text(result.title);
 		$('.report_name').text(result.userName);
 		$('.report_content').text(result.content);
 		$('.report_btn').data('id', result.userId);	
 		
 		$('.modal').css('display','block');
		if(result.userStatus==1){
			$('.report_btn').attr("disabled","disabled");
			$('.report_btn').css("background","#959595");
			$('.report_btn').css("cursor","default");
		}
 	});
	
	$('.report_btn').click(function(){
		const id=$('.report_btn').data("id");
	
		fetch(`account_stop/${id}`)
		.then(resp =>{
			if(resp.status==200){
				alert("계정이 정지되었습니다.");
				$('.modal').css('display','none');
				$('.report_btn').attr("disabled","disabled");
				$('.report_btn').css("background","#959595");
				$('.report_btn').css("cursor","default");
			}
		});
	});
  });
});
