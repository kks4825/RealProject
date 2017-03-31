<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="css/board/ext-all.css">
<link rel="stylesheet" href="/TravelAgency/css/myPage/myPage1.css">
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script src="js/myPage/myPage1.js?ver=1"></script>
<script>
function ReserveListPaging(pg){
	location.href="/TravelAgency/myPage1.do?pg="+pg;
}

function searchReserveListPaging(pg){
	location.href="/TravelAgency/reserveSearch.do?pg="+pg
			+"&citySearch="+encodeURIComponent('${citySearch}');
}
function reviewWriteForm(pack_no,date_arriv){
    //패키지 날짜
    var date_arriv_split = date_arriv.split('-');
    date_arriv_num = date_arriv_split[0]+date_arriv_split[1]+date_arriv_split[2];
    //지금날짜
    var year = new Date().getFullYear();
    var month = new Date().getMonth()+1;
    var day = new Date().getDate();
    var now = year+""+5+""+day;    //임시 값
    //지금날짜와 패키지 날짜를 뺀 값
    var gap = now-date_arriv_num;
    if(gap<0){
        alert("여행후기는 여행을 다녀온 이후 작성할 수 있습니다.");
    }else{
        //window open post 방식으로 보내야 pack_no가 사용자가 볼 수 없다.
        window.open("/TravelAgency/reviewWriteForm.do?pack_no="+pack_no,"","width=600 height=600,toolbar=no,scrollbars=no,resizealbe=no");
    }
}
</script>
<style>
#currentPaging{
	cursor:pointer;
	color:red;
	font-size:1.1em;
}
#paging{
	cursor:pointer;
	color:black;
	text-decoration: none;
	font-size:1.1em;
}
span{font-size:15px;}
span:link {color:black; text-decoration:none;}
span:visited {color:black; text-decoration:none;}
span:hover {color:black; text-decoration:underline;}
span:active {color:black; text-decoration:none; font-weight:bold;}

#title:link {color:#FFFFFF; text-decoration:none;}
#title:visited {color:#FFFFFF; text-decoration:none;}
#title:hover {color:#FFFFFF; text-decoration:underline;}
#title:active {color:#FFFFFF; text-decoration:none; font-weight:bold;}
</style>
<form name="myPageForm" method="post" action="/TravelAgency/reserveSearch.do">
<div id="body">
	<div class="t-wrap">
		<div class="tu">
			<jsp:include page="sideMenuBar.jsp" />
			<div class="tbc">
				<div class="tcb1">
					<font size=5 color=blue style="line-height: 50px;">&nbsp; &nbsp; <b>예약 확인</b></font>
						
					<div>	
					<div class="tcb1a" >
						<pre ><font color=blue size=4> 안내 </font>   
<font size=2>
   1.  예약코드를 클릭하시면 예약상세 페이지 확인이 가능하시며, 개별상품별 결제가 가능합니다. 
   2.  여행만들기 예약의 경우, 통합예약코드 클릭 후 출발 확정된 전체 상품의 통합결제가 가능합니다.
   3.  예약 후 마이페이지에서 확인되지 않는 예약코드는 우측 [예약불러오기] 버튼을 통하여 직접 연동 가능합니다.
   4.  글로벌항공사이트 예약은 http://globalflight.hanatour.com my booking 에서 확인하실 수 있습니다.
   </font>
						</pre>	
					</div>
					
				</div>
<br>
<br>
<br>
				<div class="tcb2">
					<div class="tcb2a">
						<table>
							<tr>
								<td width="944px" height="47px" >
								<font color=blue size=4> 도시검색 </font>  
								<br>
								<br>
								
								<input type="text" name="citySearch" id="citySearch" style="width:230px; height:25px; autocorrect="off" autocomplete="off" autocapitalize="off"  name="query"  class="sinput" value="" maxlength="255" />
								<input type="button" id="SearchButton" style="height:28px; width:100px; background-color: #1e70dd; color: #FFFFFF;" value="&nbsp;&nbsp;search&nbsp;&nbsp;" >
								
								</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="tcb3">
					<font style="font-size:15pt; line-height: 60px; background-color: #777777; color: #FFFFFF;"><b>&nbsp;&nbsp;&nbsp;&nbsp;예약 내역</b></font>
					<table class="tcb6" style="font-size:10pt; background-color: #777777; color: #FFFFFF;">
						<tr>
							<td colspan="8" bgcolor="#FFFFFF" style="height:2px;"></td>
						</tr>
						<tr>
							<td width="300" valign="middle" style="text-align:center;vertical-align: middle;">상품명</td>
							<td width="130" valign="middle" style="text-align:center;vertical-align: middle;">출발일/귀국일</td>
							<td width="130" valign="middle" height="40" style="text-align:center;vertical-align: middle;">예약시간/예약번호</td>
							<td width="130" valign="middle" style="text-align:center;vertical-align: middle;">총 결제금액</td>
							<td width="100" style="text-align:center;vertical-align: middle;">인원</td>							
							<td width="130" style="text-align:center;vertical-align: middle;">결제상태</td>
							<td width="100" style="text-align:center;vertical-align: middle;">상품평</td>
							<td width="70" style="text-align:center;vertical-align: middle;">예약취소</td>
						</tr>
						<tr>
						</tr>
						 <c:if test="${reserveList eq ''}">
							<tr>
								<td colspan="8"><br> <br>예약내역이 없습니다.<br> <br>
								</td>
							</tr>
						</c:if>
						<c:if test="${reserveList ne ''}">
							<c:forEach var="productList" items="${productList }" varStatus="varStatus">
								<tr>
									<td colspan="8" bgcolor="#FFFFFF" style="height:2px;"></td>
								</tr>
								<tr>
									<td style="padding:10px; height:3px;">
										<a href="/TravelAgency/detailView.do?seq=${productList.pack_no }" id="title">
											${productList.pack_title }
										</a>
									</td> <!-- 상품명 pack_no로 가져오기 -->
									<td align="center" style="vertical-align: middle;">${productList.pack_depart }~<br>${productList.pack_arriv }</td> <!-- 출발일 귀국일 pack_no로 가져오기 -->
								<c:forEach var="reserveList" begin="${varStatus.index}" end="${varStatus.index}" items="${reserveList }">
										<td align="center" style="vertical-align: middle;">${reserveList.reserveTime }/${reserveList.list_SEQ }</td>
										<td align="center" style="vertical-align: middle;">${reserveList.totalPay }</td>
										<td align="center" style="vertical-align: middle;">${reserveList.numOfPerson }</td>
										<td id="payState" style="vertical-align: middle;">${reserveList.paymentState }</td> 
										<td align="center" style="vertical-align: middle;">
                                            <c:if test="${reserveList.reviewSEQ eq '0'}"> 
                                                <input type="button" value="여행후기작성" id="reviewWrite" onclick="javascript:reviewWriteForm(${reserveList.pack_no},'${productList.pack_arriv}')" style="cursor:pointer;"/>
											</c:if>
											<c:if test="${reserveList.reviewSEQ ne '0'}">
												<input type="button" value="후기작성완료"  disabled />
											</c:if>
										</td>
										<td align="center" style="vertical-align: middle;">
											<input type="hidden" value="${productList.pack_depart }" id="depart_date${varStatus.index }"/>
											<input type="hidden" value="${reserveList.list_SEQ }" id="cancel_seq${varStatus.index }"/>
											<input type="hidden" value="${reserveList.reviewSEQ }" id="review_seq${varStatus.index }"/>
											<input type="button" value="취소" class="reserveCancel" style="cursor:pointer;"/>
										</td>				
								</c:forEach>
								</tr>
							</c:forEach>
						</c:if>
					</table>
					<div id="paging" style="text-align:center;">
						${ReserveListPaging.pagingHTML }							
					</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</form>