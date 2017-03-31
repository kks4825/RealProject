//==$(function(){
$(document).ready(function(){
	$('#reserveBtn').click(function(){
		//지난 여행상품입니다. 
		var year = new Date().getFullYear();
	    var month = new Date().getMonth();
	    var day = new Date().getDate();
	    //임시값
	    var now = new Date(year,month,day);	//오늘과 상품의 출발날짜 비교
        //출발날짜	    
	    var depart_day = $('#depart_day').val();
        var depart_split=depart_day.split('-');
        var depart_date = new Date(depart_split[0],depart_split[1]-1,depart_split[2]);
        var gap = now-depart_date;
        if(gap>=0){
            alert("지난 여행 상품입니다.");
        }else if($('#kids option:selected').val()=='0'&&$('#adults option:selected').val()=='0'){
			alert("선택된 인원이 없습니다.");
		}else{
			document.detailViewForm.submit();
		}
	});
	
	$('#schedule').click(function(){
		$('.tab_content').css("display","none");
		$('#content1').css("display","block");
		$('.items').css("background-color","#f2f2f2");
		$('#item0').css("background-color","#BDBDBD");
	});
	
	$('#core_info').click(function(){
		$('.tab_content').css("display","none");
		$('#content2').css("display","block");
		$('.items').css("background-color","#f2f2f2");
		$('#item1').css("background-color","#BDBDBD");
	});
	
	$('#tour_info').click(function(){
		$('.tab_content').css("display","none");
		$('#content3').css("display","block");
		$('.items').css("background-color","#f2f2f2");
		$('#item2').css("background-color","#BDBDBD");
	});
	
	$('#tour_ref').click(function(){
		$('.tab_content').css("display","none");
		$('#content4').css("display","block");
		$('.items').css("background-color","#f2f2f2");
		$('#item3').css("background-color","#BDBDBD");
	});
	
	$('#safe_info').click(function(){
		$('.tab_content').css("display","none");
		$('#content5').css("display","block");
		$('.items').css("background-color","#f2f2f2");
		$('#item4').css("background-color","#BDBDBD");
	});
});