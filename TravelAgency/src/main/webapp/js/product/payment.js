$(document).ready(function(){
	$('#credit_card').click(function(){
		$('.tab_content').css("display","none");
		$('#content1').css("display","block");
	});
	
	$('#account_depo').click(function(){
		$('.tab_content').css("display","none");
		$('#content2').css("display","block");
	});
});