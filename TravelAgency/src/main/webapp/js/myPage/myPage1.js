$(document).ready(function(){
	$('.reserveCancel').each(function(index){
		$(this).on("click",function(){
			var review_seq = $('#review_seq'+index).val();
			alert(review_seq);
			//패키지 날짜
			var depart_date = $('#depart_date'+index).val();
		    var depart_date_split = depart_date.split('-');
		    var depart_date_num = new Date(depart_date_split[0],depart_date_split[1]-1,depart_date_split[2]);
			//지금날짜
		    var year = new Date().getFullYear();
		    var month = new Date().getMonth();
		    var day = new Date().getDate();
		    var now = new Date(year,month,day);	//오늘값
		    //지금날짜와 패키지 날짜를 뺀 값
		    var gap = depart_date_num-now;
		    var day = 1000*60*60*24; //day로 gap을 나누면 며칠 차이나는지 알 수있다.
		    //gap이 28일~14일이면 100%, 14일~7일이면 50%, 7일~하루 전: 0%
			var cancel_seq = $('#cancel_seq'+index).val();
			var remain_date= gap/day;
			var refund_percent;
			if(remain_date>=14){
				refund_percent=100;
			}else if(remain_date<14&&remain_date>=7){
				refund_percent=50;
			}else if(remain_date<7){
				refund_percent=0;
			}
			if(remain_date<=0){
				alert("예약 취소 기간이 지났습니다.");
			}else{
				window.open("/TravelAgency/reserveCancelForm.do?seq="+cancel_seq+"&remain_date="+remain_date+"&refund_percent="+refund_percent+"&review_seq="+review_seq,"","width=370 height=200,toolbar=no,scrollbars=no,resizealbe=no");
			}
		});
	});
	/*$('.reserveCancel').click(function(){
		//리뷰가 있다면 리뷰 seq도 같이 가져감.
		var review_seq = $('.review_seq').val();
		alert(review_seq);
		//패키지 날짜
		var depart_date = $('#depart_date').val();
	    var depart_date_split = depart_date.split('-');
	    var depart_date_num = new Date(depart_date_split[0],depart_date_split[1]-1,depart_date_split[2]);
		//지금날짜
	    var year = new Date().getFullYear();
	    var month = new Date().getMonth();
	    var day = new Date().getDate();
	    var now = new Date(year,month,day);	//오늘값
	    //지금날짜와 패키지 날짜를 뺀 값
	    var gap = depart_date_num-now;
	    var day = 1000*60*60*24; //day로 gap을 나누면 며칠 차이나는지 알 수있다.
	    //gap이 28일~14일이면 100%, 14일~7일이면 50%, 7일~하루 전: 0%
		var cancel_seq = $('#cancel_seq').val();
		var remain_date= gap/day;
		var refund_percent;
		if(remain_date>=14){
			refund_percent=100;
		}else if(remain_date<14&&remain_date>=7){
			refund_percent=50;
		}else if(remain_date<7){
			refund_percent=0;
		}
		if(remain_date<=0){
			alert("예약 취소 기간이 지났습니다.");
		}else{
			window.open("/TravelAgency/reserveCancelForm.do?seq="+cancel_seq+"&remain_date="+remain_date+"&refund_percent="+refund_percent+"&review_seq="+review_seq,"","width=370 height=200,toolbar=no,scrollbars=no,resizealbe=no");
		}
 	});*/
    
    $('#SearchButton').click(function(){
    	var citySearch = $('#citySearch').val();
    	if(citySearch.length<2){
    		alert("2글자 이상 도시이름을 적어주세요.");
    	}else{
    		document.myPageForm.submit();
    		/*location.href="/TravelAgency/reserveSearch.do?citySearch="+encodeURI(encodeURIComponent(citySearch));*/
    	}
    });    
});





