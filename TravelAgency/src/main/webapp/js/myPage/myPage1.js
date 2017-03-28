
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
		alert("취소 클릭");
	});
});