<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<link rel="stylesheet" href="css/myPage/myBasket.css">
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
$(document).ready(function(){
	$('.checkBtn').click(function(){
		alert("예약금 입금 확인을 누르셨습니다.");
		document.payCheckForm.action='/TravelAgency/payChecked.do';
		document.payCheckForm.method='POST';
		document.payCheckForm.submit();
	});
});
	
</script>
	<div class="t-wrap">
		<div class="tu">
			<jsp:include page="sideMenuBar.jsp" />
			<div class="tbc">
				<div class="tcb5" style="margin:0 auto;"><font style="line-height:40px;"><b>결제대기목록(관리자)</b></font>
					<form name="payCheckForm">
						<table>
							<tr>
								<td colspan="5" height="2px" bgcolor="#607d8b"></td>
							</tr>
							<tr>
								<th width="350" height="40" style="text-align:center;">상품명</th>
								<th width="120" style="text-align:center;">인원</th>
								<th width="145" style="text-align:center;">상품가</th>
								<th width="115" style="text-align:center;">고객ID(고객명)</th>
								<th width="115" style="text-align:center;">입금확인</th>
			
							</tr>
							<tr>
								<td colspan="5" height="2px" bgcolor="#607d8b">
								</td>
							</tr>
							<c:forEach var="reserveList_unPaid" items="${reserveList_unPaid}" varStatus="varStatus">
								<tr>
									<c:forEach var="productList" items="${productList }" begin="${varStatus.index}" end="${varStatus.index}">
										<td >
											${productList.pack_title}
										</td>
									</c:forEach>
									<td >
										${reserveList_unPaid.numOfPerson}
									</td>
									<td >
										${reserveList_unPaid.totalPay}
									</td>
									<c:forEach var="memberList" items="${memberList }" begin="${varStatus.index}" end="${varStatus.index}">
										<td >
											${reserveList_unPaid.memId} ( ${memberList.memName } )
										</td>
									</c:forEach>
									<td >
										<input type="button" value="입금확인" id="payChecked" class="checkBtn" >
										<input type="hidden" value="${reserveList_unPaid.list_SEQ }" name="list_SEQ">
									</td>
								</tr>
							</c:forEach>
							<tr>
								<td colspan="5" height="2px" bgcolor="#607d8b">
								</td></tr>
							<tr>
								<td colspan="5" height="2px" bgcolor="#607d8b">
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>