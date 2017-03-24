//==$(function(){
$(document).ready(function(){
	$('#reserveBtn').click(function(){		
		if($('#kids option:selected').val()=='0'&&$('#adults option:selected').val()=='0'){
			alert("선택된 인원이 없습니다.");
		}else{
			document.detailViewForm.submit();
		}
	});
	
	$('#schedule').click(function(){
		$('.tab_content').css("display","none");
		$('#content1').css("display","block");
		$('.items').css("background-color","#BDBDBD");
		$('#item0').css("background-color","#353535");
	});
	
	$('#core_info').click(function(){
		$('.tab_content').css("display","none");
		$('#content2').css("display","block");
		$('.items').css("background-color","#BDBDBD");
		$('#item1').css("background-color","#353535");
	});
	
	$('#tour_info').click(function(){
		$('.tab_content').css("display","none");
		$('#content3').css("display","block");
		$('.items').css("background-color","#BDBDBD");
		$('#item2').css("background-color","#353535");
	});
	
	$('#tour_ref').click(function(){
		$('.tab_content').css("display","none");
		$('#content4').css("display","block");
		$('.items').css("background-color","#BDBDBD");
		$('#item3').css("background-color","#353535");
	});
	
	$('#safe_info').click(function(){
		$('.tab_content').css("display","none");
		$('#content5').css("display","block");
		$('.items').css("background-color","#BDBDBD");
		$('#item4').css("background-color","#353535");
	});
});