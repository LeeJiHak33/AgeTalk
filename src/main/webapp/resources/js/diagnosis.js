window.onload = function() {	
		const form = document.diagnosis_form;
		const btnSub = document.getElementById('btn_sub');
	    btnSub.addEventListener('click', function() {
	    	const values = {
	    	value1:$('input[name=hyp1]:checked').val() || 5,
			value2:$('input[name=hyp2]:checked').val() || 5,
			value3:$('input[name=hyp3]:checked').val() || 5,
			value4:$('input[name=hyp4]:checked').val() || 5,
			value5:$('input[name=hyp5]:checked').val() || 5,
			value6:$('input[name=hyp6]:checked').val() || 5,
			value7:$('input[name=hyp7]:checked').val() || 5,
			value8:$('input[name=hyp8]:checked').val() || 5,
			value9:$('input[name=hyp9]:checked').val() || 5,
	    	};
			
			if (values.value1 == 5) {
	            alert("체크하지 않은 항목이 있습니다.");
	            console.log(values.value1);
	            return;
	        }	
			if (values.value2 == 5) {
	            alert("체크하지 않은 항목이 있습니다.");
	            console.log(values.value2);
	            return;
	        }	
			if (values.value3 == 5) {
	            alert("체크하지 않은 항목이 있습니다.");
	            console.log(values.value3);
	            return;
	        }	
			if (values.value4 == 5) {
	            alert("체크하지 않은 항목이 있습니다.");
	            console.log(values.value4);
	            return;
	        }	
			if (values.value5 == 5) {
	            alert("체크하지 않은 항목이 있습니다.");
	            console.log(values.value5);
	            return;
	        }	
			if (values.value6 == 5) {
	            alert("체크하지 않은 항목이 있습니다.");
	            console.log(values.value6);
	            return;
	        }
			if (values.value7 == 5) {
	            alert("체크하지 않은 항목이 있습니다.");
	            console.log(values.value7);
	            return;
	        }	
			if (values.value8 == 5) {
	            alert("체크하지 않은 항목이 있습니다.");
	            console.log(values.value8);
	            return;
	        }	
			if (values.value9 == 5) {
	            alert("체크하지 않은 항목이 있습니다.");
	            console.log(values.value9);
	            return;
	        }
		
			const total = parseInt(values.value1) + parseInt(values.value2) + parseInt(values.value3) + parseInt(values.value4) + parseInt(values.value5) + parseInt(values.value6) + parseInt(values.value7) + parseInt(values.value8) + parseInt(values.value9);
			$('#total').val(total);
	        console.log("'결과전송' 버튼이 클릭되었습니다.");
	        console.log(total);
	        
	        alert("설문조사가 완료됐습니다");
	        form.submit();
	    });
	    
	};
	