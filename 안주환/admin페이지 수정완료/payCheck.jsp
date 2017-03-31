<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<style>
div{
	border: 0px solid red;
	padding: 0px;
	margin: 0px;
}
#bankInfo tr,th,td{
	padding:10px;
	margin:10px;
	border-collapse: collapse;
	border: 1px solid #ddd;
	padding: 10px;
	text-align:center;
}
#bankInfo th{
	width:200px;
}
.pay{
		margin: 0px;
		border: 1px solid #ddd;
		padding: 30px;
	}
.pay_category{
		  top: -34px;
		  left: 0;
		  background: #1e70dd;
		  padding: 10px 15px;
		  color: #FFFFFF;
		  font-size: 14px;
		  font-weight: 600;
		  text-transform: uppercase;
		  margin-bottom:10px;
	}
</style>
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
<div id="content_sub">
	<div class="sub_container">
		<div class="sub_cont">
			<div class="pay" style="margin:0 auto; width:100%; margin-top:0px;border: 0px solid #ddd;">
				<div class="sub_tit" style="margin:0 auto; width:100%; margin-top:-20px;">
					<h3>관리자 페이지</h3>
				</div><!--sub_tit-->	
				<div class="pay_category">결제 대기 목록</div>
						<div class="t-wrap">
						
								<c:if test="${sessionScope.memId!='admin' }">
									<jsp:include page="sideMenuBar.jsp" />
								</c:if>
								<div class="tbc">
									<div class="tcb5" style="margin:0 auto;">
										<form name="payCheckForm">
											<table>
											
												<tr>
													<th width="370" height="40" style="text-align:center;">상품명</th>
													<th width="100" style="text-align:center;">인원</th>
													<th width="145" style="text-align:center;">상품가</th>
													<th width="115" style="text-align:center;">고객ID(고객명)</th>
													<th width="115" style="text-align:center;">입금확인</th>
								
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
											</table>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>	