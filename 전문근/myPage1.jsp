<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="/TravelAgency/css/myPage/myPage1.css?ver=1">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"></link>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<!-- jQuery UI 국제화 대응을 위한 라이브러리 (다국어) -->
<script	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/i18n/jquery-ui-i18n.min.js"></script>
<script src="js/myPage/myPage1.js?ver=1"></script>
<div id="body">
	<div class="t-wrap">
		<div class="tu">
			<jsp:include page="sideMenuBar.jsp" />
			<div class="tbc">
				<div class="tcb1">
					<font size=5 style="line-height: 40px;">&nbsp; &nbsp; <b>예약 확인</b></font>
					<div class="tcb1a">
						<pre>[안내]  
1. 예약코드를 클릭하시면 예약상세 페이지 확인이 가능하시며, 개별상품별 결제가 가능합니다. 
2. 여행만들기 예약의 경우, 통합예약코드 클릭 후 출발 확정된 전체 상품의 통합결제가 가능합니다.
3. 예약 후 마이페이지에서 확인되지 않는 예약코드는 우측 [예약불러오기] 버튼을 통하여 직접 연동 가능합니다.예약불러오기
4. 글로벌항공사이트 예약은 http://globalflight.hanatour.com my booking 에서 확인하실 수 있습니다.
						</pre>	
					</div>
				</div>

				<div class="tcb2">
					<div class="tcb2a">
						<table>
							<tr>
								<td width="944px" height="47px" style="border: 1px solid red;">
									출발일: &nbsp; 
								<input type="text" name="pack_depart" size="15" id="date_depart_search" />&nbsp;~ 도착일: &nbsp;
								<input type="text" name="pack_arriv" size="15" id="date_arriv_search" />
								<input type="button" value="&nbsp;&nbsp;검색&nbsp;&nbsp;">&nbsp;&nbsp;
									*최대 1년 단위 검색 가능
								</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="tcb3">
					<font style="line-height: 40px;"><b>예약 내역</b></font>
					<table border="1">
						<tr>
							<td colspan="8" bgcolor="#607d8b"></td>
						</tr>
						<tr>
							<td width="300" style="text-align:center;">상품명</td>
							<td width="130" style="text-align:center;">출발일/귀국일</td>
							<td width="130" height="40" style="text-align:center;">예약시간/<br>예약번호</td>
							<td width="130" style="text-align:center;">총 결제금액</td>
							<td width="100" style="text-align:center;">인원</td>							
							<td width="100" style="text-align:center;">결제상태</td>
							<td width="100" style="text-align:center;">상품평</td>
							<td width="70"" style="text-align:center;">예약취소</td>
						</tr>
						<tr>
							<td colspan="8" bgcolor="#607d8b"></td>
						</tr>
						 <c:if test="${reserveList eq ''}">
							<tr>
								<td colspan="8"><br> <br>예약내역이 없습니다.<br> <br>
									<br> <br></td>
							</tr>
						</c:if>
						<c:if test="${reserveList ne ''}">
							<c:forEach var="productList" items="${productList }" varStatus="varStatus">
								<tr>
									<td>${productList.pack_title }</td> <!-- 상품명 pack_no로 가져오기 -->
									<td>${productList.pack_depart }~<br>${productList.pack_arriv }</td> <!-- 출발일 귀국일 pack_no로 가져오기 -->
								<c:forEach var="reserveList" begin="${varStatus.index}" end="${varStatus.index}" items="${reserveList }">
										<td>${reserveList.reserveTime }/${reserveList.list_SEQ }</td>
										<td>${reserveList.totalPay }</td>
										<td>${reserveList.numOfPerson }</td>
										<td id="payState">${reserveList.paymentState }</td> 
										<td>
											<c:if test="${reserveList.reviewSEQ eq 0}"> <!-- 상품평 작성되면 0에서 1로 바 -->
												<input type="button" value="상품평작성" id="reviewWrite"/>
											</c:if>
											<c:if test="${reserveList.reviewSEQ eq 1}">
												<input type="button" value="상품평보기" id="reviews"/>
											</c:if>
										</td>			'
										<td>
											<input type="button" value="취소" onclick="location='reserveCancel.do?seq=${reserveList.list_SEQ}'"/>
										</td>				
									</tr>
								</c:forEach>
							</c:forEach>
						</c:if>
						<tr>
							<td colspan="8" bgcolor="#607d8b"></td>
						</tr>
						<tr>
							<td colspan="8" bgcolor="#607d8b"></td>
						</tr>
					</table>
				</div>
				<div class="tcb4">
					<div class="tcb4a">
						<table>
							<tr style="border: 1px solid red;">
								<td width="130" style="border: 1px solid red;"></td>
								<td width="736">
									<pre><h4>· 투어닷컴 예약의 경우 상품을 직접 예약한 고객에게만 예약내역이 노출됩니다.
									
· 상품평 작성을 원하는 동반 고객은 우측에 있는 '상품평 작성'버튼을 클릭해 주세요. 
											
· 작성하신 글은  마이페이지 > 참여내역 > 여행후기 에서 확인 및 수정이 가능합니다.
										</h4>
									</pre>
								</td>
								<td width="130" style="border: 1px solid red;">
									<input type="button" value="♡상품평 작성">
								</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="tcb5">
					<font style="line-height: 40px;"><b>취소 내역</b></font>
					<table>
						<tr>
							<td colspan="6" bgcolor="#607d8b"></td>
						</tr>
						<tr>
							<td width="145" height="40" style="text-align:center;">예약날짜/<br>예약코드</td>
							<td width="315" style="text-align:center;">상품명</td>
							<td width="145" style="text-align:center;">총 결제금액</td>
							<td width="105" style="text-align:center;">인원</td>
							<td width="145" style="text-align:center;">출발일/귀국일</td>
							<td width="115" style="text-align:center;">예약상태</td>
						</tr>
						<tr>
							<td colspan="6" bgcolor="#607d8b"></td>
						</tr>
						<tr>
							<td colspan="6"><br> <br>취소내역이 없습니다.<br> <br>
								<br> <br></td>
						</tr>
						<tr>
							<td colspan="6" bgcolor="#607d8b"></td>
						</tr>
						<tr>
							<td colspan="6" bgcolor="#607d8b"></td>
						</tr>
					</table>
				</div>
			</div>
			<div class="tbd"></div>
		</div>
	</div>
</div>