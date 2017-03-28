
function reviewWriteForm(pack_no,date_arriv){
	//패키지 날짜
    var date_arriv_split = date_arriv.split('-');
    date_arriv_num = date_arriv_split[0]+date_arriv_split[1]+date_arriv_split[2];
	//지금날짜
    var year = new Date().getFullYear();
    var month = new Date().getMonth()+1;
    var day = new Date().getDate();
    var now = year+""+month+""+day;	//임시 값
    //지금날짜와 패키지 날짜를 뺀 값
    var gap = now-date_arriv_num;
    if(gap<0){
    	alert("여행후기는 여행을 다녀온 이후 작성할 수 있습니다.");
    }else{
    	//window open post 방식으로 보내야 pack_no가 사용자가 볼 수 없다.
    	window.open("/TravelAgency/reviewWriteForm.do?pack_no="+pack_no,"","width=550 height=600,toolbar=no,scrollbars=no,resizealbe=no");
    }
}
function reviewWrite(){
	if(document.getElementById('subject').value==""){
		alert("상품평 제목을 입력해 주세요");
	}else if(document.getElementById('starscore').value==""){
		alert("별점을 선택해 주세요");
	}else if(document.getElementById('content').value==""){
		alert("상품평 내용을 입력해 주세요");
	}else{
		document.reviewWriteForm.submit();
	}	
}
//==$(function(){
$(document).ready(function(){
	$('#reserveCancel').click(function(){
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
			window.open("/TravelAgency/reserveCancelForm.do?seq="+cancel_seq+"&remain_date="+remain_date+"&refund_percent="+refund_percent,"","width=370 height=200,toolbar=no,scrollbars=no,resizealbe=no");
		}
	});
	
});