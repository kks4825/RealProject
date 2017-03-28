<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
$(document).ready(function(){
	$('#cancelBtn').click(function(){
		alert("예약이 취소 되었습니다");
		var seq = $('#seq').val();
		$(location).attr("href","/TravelAgency/reserveCancel.do?seq="+seq);
	});
});
</script>
<body>
	<p>지금 취소하면 상품 정책에 따라  ${refund_percent }%환불됩니다.<br>
		*여행 출발 전 1달 ~ 2주 이상 : 100%<br>
		*여행 출발 전 2주 ~ 1주 이상:  50%<br>
		*여행 출발 전 1주 ~ 당일 이전:   0%<br>
		취소 요청하시겠습니까?
	</p>
	<input type="hidden" value="${seq }" id="seq"/>
	<input type="button" value="확인" id="cancelBtn"/>
	<input type="button" value="취소" onclick="window.close()"/>
</body>