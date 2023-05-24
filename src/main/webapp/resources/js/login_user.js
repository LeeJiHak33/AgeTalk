$("#userId").val(Cookies.get('key'));      
		if($("#userId").val() != ""){
		    $("#idSaveCheck").attr("checked", true);
		}
	
	$("#idSaveCheck").change(function(){
		if($("#idSaveCheck").is(":checked")){
		    Cookies.set('key', $("#userId").val(), { expires: 7 });
		}else{
		      Cookies.remove('key');
		}
		});
	 
	$("#userId").keyup(function(){
		if($("#idSaveCheck").is(":checked")){
		    Cookies.set('key', $("#userId").val(), { expires: 7 });
		}
		});
