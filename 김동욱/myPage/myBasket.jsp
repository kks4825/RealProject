<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link rel="stylesheet" href="css/myPage/myBasket.css?ver=1">

	<div class="t-wrap">
		<div class="tu">
			<jsp:include page="sideMenuBar.jsp" />
			<div class="tbc">
				<div class="tcb5"><font style="line-height:40px;"><b>나의 장바구니</b></font>
					<table>
						<tr>
							<td colspan="5" height="2px" bgcolor="#607d8b"></td>
						</tr>
						<tr>
							<th width="460" height="40" style="text-align:center;">상품명</th>
							<th width="145">출발일/귀국일</th>
							<th width="105">인원</th>
							<th width="145">상품가</th>
							<th width="115">예약하기</th>
		
						</tr>
						<tr>
							<td colspan="5" height="2px" bgcolor="#607d8b">
							</td>
						</tr>
						<tr>
							<td colspan="5" ><br><br>장바구니 내역이 없습니다.<br><br><br><br>
							</td>
						</tr>
						<tr>
							<td colspan="5" height="2px" bgcolor="#607d8b">
							</td></tr>
						<tr>
							<td colspan="5" height="2px" bgcolor="#607d8b">
							</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="tbd">d
			</div>
		</div>
	</div>



<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>

.t-wrap{width:1200px; height:1200px;border:1px solid red;}/*가상의 홈페이지 공간*/

.tu{width:1200px; height:1200px; margin:auto; border:1px solid red; position:relative;}/*가상의 바디*/

.tba,.tbb,.tbc,.tbd,.tca,.tcb1,.tcb2,.tcb3,.tcb4,.tcb5{border:1px solid red; text-align:center;layout:fixed;}

.tbb li a{text-decoration:none;}

.tbb li li a{text-decoration:none;}

.tba{background-color:none;vertical-align:middle;width:198px; height:200px;margin-bottom:0px; position:relative;}

.tbb{background-color:none;width:200px; height:1000px; float:left; }

.tbc{background-color:none;width:996px; height:1000px; display:inline-block;}

.tbd{background-color:none;width:1198px; height:200px; float:left; clear:both;margin-top:0px; }/*가로폭이 340픽셀 이상인 기기에서는 바디부의 우측으로 배열이 될수 있기 때문에  clear:both;속성을 줍니다.*/

.tbb>ul{background-color:none;width:100px; height:30px; margin:0px; border-radius:0.1em; display:block; position:relative;left:-200;top:100px;border:1px solid #34a435;}

.tbb>ul>.tca{background-color:none;width:110px; height:30px; margin:0px; border-radius:0.2em; border:1px solid red; display:inline-block; }

.tbb>ul>li:hover ul{width:85px; height:30px; margin-left:40px; border-radius:0.2em; display:block; position:absolute;}

.tbb>ul>.tca a{background-color:none;width:110px; height:30px; margin:0px; border-radius:0.2em; display:block;}

.tbb ul ul{display:none;}

.tbb ul{list-style:none;}

.tbb li li a{border:2px solid gray;display:none; background-color:none;width:85px; height:30px; margin:0px; border-radius:0.2em; display:block;}

.tbb li li a:hover{background-color:black;width:110px; height:30px; margin:0px; border-radius:0.2em; display:block;}

.tcb5{background-color:none;width:996px; height:230px; padding-top:10px; layout:fixed; margin-bottom:0px;}

</style>
	<div class="t-wrap">
		<div class="tu">
			<div class="tbb">
				<div class="tba" >
					<br/>
					<br/>
					<input type="button" value= "  로그아웃  " onclick=""><br/>
					<input type="button" value= "마이페이지" onclick="">
				</div>
				<ul>
					<li class="tca"><a href="#">나의 예약보기</a>
					</li></br>
					<li class="tca"><a href="#">나의 장바구니</a>
					</li></br>
					<li class="tca"><a href="#">나의 참여내역</a>
						<ul>
							<li><a href="#">상담문의</a></li>
							<li><a href="#">여행후기</a></li>
						</ul>
					</li></br>
					<li class="tca"><a href="#">나의 정보관리</a>
						<ul>
							<li><a href="#">기본정보변경</a></li>
							<li><a href="#">비밀번호변경</a></li>
							<li><a href="#">여권/비자관리</a></li>
						</ul>
					</li></br>
					<li class="tca"><a href="#">회원탈퇴</a>
					</li></br>
				</ul>
			</div>
			<div class="tbc">
				<div class="tcb5"><font style="line-height:40px;"><b>나의 장바구니</b></font>
					<table>
						<tr>
							<td colspan="5" bgcolor="#607d8b"></td>
						</tr>
						<tr>
							<th width="460" height="40">상품명</th>
							<th width="145">출발일/귀국일</th>
							<th width="105">인원</th>
							<th width="145">상품가</th>
							<th width="115">예약하기</th>
		
						</tr>
						<tr>
							<td colspan="5" bgcolor="#607d8b">
							</td>
						</tr>
						<tr>
							<td colspan="5" ><br><br>장바구니 내역이 없습니다.<br><br><br><br>
							</td>
						</tr>
						<tr>
							<td colspan="5" bgcolor="#607d8b">
							</td></tr>
						<tr>
							<td colspan="5" bgcolor="#607d8b">
							</td>
						</tr>
					</table>
				</div>
			</div>
			<div class="tbd">d
			</div>
		</div>
	</div> --%>