$(document).ready(function(){
	$('#credit_card').click(function(){
		$('.tab_content').css("display","none");
		$('#content1').css("display","block");
		$('#content2').css("display","none");
	});
	
	$('#account_depo').click(function(){
		$('.tab_content').css("display","none");
		$('#content1').css("display","none");
		$('#content2').css("display","block");
	});
	
	$('#paymentBtn').click(function(){
		if($('input:radio[name=paymethod]:checked').val()=="credit_card"){
			if($('#card option:selected').val()=="0"){
				alert("카드종류를 선택하세요");			
			}else if($('#monthly option:selected').val()=="0"){
				alert("할부기간을 선택하세요");
			}else{
				document.paymentForm.submit();
			}		
		}else if($('input:radio[name=paymethod]:checked').val()=="account_depo"){
			if($('#bank option:selected').val()=="0"){
				alert("은행를 선택하세요");			
			}else{
				document.paymentForm.submit();
			}
		}
	});
});