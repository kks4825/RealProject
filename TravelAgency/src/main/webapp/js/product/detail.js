$(document).ready(function(){
	$('#schedule').click(function(){
		$('.tab_content').css("display","none");
		$('#content1').css("display","block");
	});
	
	$('#core_info').click(function(){
		$('.tab_content').css("display","none");
		$('#content2').css("display","block");
	});
	
	$('#tour_info').click(function(){
		$('.tab_content').css("display","none");
		$('#content3').css("display","block");
	});
	
	$('#tour_ref').click(function(){
		$('.tab_content').css("display","none");
		$('#content4').css("display","block");
	});
	
	$('#safe_info').click(function(){
		$('.tab_content').css("display","none");
		$('#content5').css("display","block");
	});
});