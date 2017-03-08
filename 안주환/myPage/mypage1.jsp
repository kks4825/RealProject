<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지-예약 확인</title>

<style>

body{margin:0px; padding:0px;}/*상위 스타일에 대한 원점 처리를 해 줍니다.*/

.t-wrap{width:1200px; height:1200px;border:1px solid red;}/*가상의 홈페이지 공간*/

.tu{width:1200px; height:1200px; margin:auto; border:1px solid red; position:relative;}/*가상의 바디*/

.tba,.tbb,.myPage1_tbc,.tbd,.tca,.tcb1,.tcb2,.tcb3,.tcb4,.tcb5{border:1px solid red; text-align:center;layout:fixed;}

.tbb li a{text-decoration:none;}

.tbb li li a{text-decoration:none;}

.tba{background-color:none;vertical-align:middle;width:198px; height:200px;margin-bottom:0px; position:relative;}

.tbb{background-color:none;width:200px; height:1000px; float:left; }

.myPage1_tbc{background-color:none;width:996px; height:1000px; display:inline-block;}

.tbd{background-color:none;width:1198px; height:200px; float:left; clear:both;margin-top:0px; }/*가로폭이 340픽셀 이상인 기기에서는 바디부의 우측으로 배열이 될수 있기 때문에  clear:both;속성을 줍니다.*/

.tbb>ul{background-color:none;width:100px; height:30px; margin:0px; border-radius:0.1em; display:block; position:relative;left:-200;top:100px;border:1px solid #34a435;}

.tbb>ul>.tca{background-color:none;width:110px; height:30px; margin:0px; border-radius:0.2em; border:1px solid red; display:inline-block; }

.tbb>ul>li:hover ul{width:85px; height:30px; margin-left:40px; border-radius:0.2em; display:block; position:absolute;}

.tbb>ul>.tca a{background-color:none;width:110px; height:30px; margin:0px; border-radius:0.2em; display:block;}

.tbb ul ul{display:none;}

.tbb ul{list-style:none;}

.tbb li li a{border:2px solid gray;display:none; background-color:none;width:85px; height:30px; margin:0px; border-radius:0.2em; display:block;}

.tbb li li a:hover{background-color:black;width:110px; height:30px; margin:0px; border-radius:0.2em; display:block;}

.myPage1_tcb1{background-color:none;width:996px; height:189px; padding-top:10px; layout:fixed; margin-bottom:20px; text-align:justify;}

.myPage1_tcb1a{width:946px; height:130px; padding-top:0px; layout:fixed; border:1px solid gray; text-align:justify;layout:fixed;position:relative; left : 23px; top:0px;}

.myPage1_tcb2{background-color:none;width:996px; height:75px; padding-top:0px; layout:fixed; margin-bottom:20px;}

.myPage1_tcb2a{width:946px; height:49px; padding-top:0px; layout:fixed; border:1px solid gray; text-align:center;layout:fixed;position:relative; left : 23px; top:13px;}

.myPage1_tcb3{background-color:none;width:996px; height:230px; padding-top:10px; layout:fixed; margin-bottom:20px;}

.myPage1_tcb4{background-color:none;width:996px; height:155px; padding-top:0px; layout:fixed; margin-bottom:20px;}

.myPage1_tcb4a{width:946px; height:125px; padding-top:0px; layout:fixed; border:1px solid gray; text-align:justify;layout:fixed;position:relative; left : 23px; top:15px;}

.myPage1_tcb5{background-color:none;width:996px; height:230px; padding-top:10px; layout:fixed; margin-bottom:0px;}

</style>
</head>
<body>
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
			<div class="myPage1_tbc">
				<div class="myPage1_tcb1"><font size=5 style="line-height:40px;">&nbsp &nbsp <b><u>예약 확인</u></b></font>
					<div class="myPage1_tcb1a">
<pre>
  [안내]
  
  1. 예약코드를 클릭하시면 예약상세 페이지 확인이 가능하시며, 개별상품별 결제가 가능합니다. 
  2. 여행만들기 예약의 경우, 통합예약코드 클릭 후 출발 확정된 전체 상품의 통합결제가 가능합니다.
  3. 예약 후 마이페이지에서 확인되지 않는 예약코드는 우측 [예약불러오기] 버튼을 통하여 직접 연동 가능합니다.예약불러오기
  4. 글로벌항공사이트 예약은 http://globalflight.hanatour.com my booking 에서 확인하실 수 있습니다.
</pre>
					</div>
				</div>

				<div class="myPage1_tcb2">
					<div class="myPage1_tcb2a">
					<table>
						<tr><td width="944px" height="47px" style="border: 1px solid red;">
						출발일 &nbsp
						<select name="year">
					    	<option value="2012" >2012</option>
					    	<option value="2013" >2013</option>
					    	<option value="2014" >2014</option>
					    	<option value="2015" >2015</option>
					    	<option value="2016" selected="selected">2016</option>
						</select>년&nbsp  
						<select name="month">
					    	<option value="1" selected="selected">1</option>
					    	<option value="2" >2</option>
					    	<option value="3" >3</option>
					    	<option value="4" >4</option>
					    	<option value="5" >5</option>
					    	<option value="6" >6</option>
					    	<option value="7" >7</option>
					    	<option value="8" >8</option>
					    	<option value="9" >9</option>
					    	<option value="10" >10</option>
					    	<option value="11" >11</option>
					    	<option value="12" >12</option>
					   	</select>월 &nbsp 
					   		<select name="day">
					    	<option value="1" selected="selected">1</option>
					    	<option value="2" >2</option>
					    	<option value="3" >3</option>
					    	<option value="4" >4</option>
					    	<option value="5" >5</option>
					    	<option value="6" >6</option>
					    	<option value="7" >7</option>
					    	<option value="8" >8</option>
					    	<option value="9" >9</option>
					    	<option value="10" >10</option>
					    	<option value="11" >11</option>
					    	<option value="12" >12</option>
					    	<option value="13" >13</option>
					    	<option value="14" >14</option>
					    	<option value="15" >15</option>
					    	<option value="16" >16</option>
					    	<option value="17" >17</option>
					    	<option value="18" >18</option>
					    	<option value="19" >19</option>
					    	<option value="20" >20</option>
					    	<option value="21" >21</option>
					    	<option value="22" >22</option>
					    	<option value="23" >23</option>
					    	<option value="24" >24</option>
					    	<option value="25" >25</option>
					    	<option value="26" >26</option>
					    	<option value="27" >27</option>
					    	<option value="28" >28</option>
					    	<option value="29" >29</option>
					    	<option value="30" >30</option>
					    	<option value="31" >31</option>
					   </select>일&nbsp&nbsp ~ &nbsp&nbsp  
					   	<select name="year">
					    	<option value="2012" >2012</option>
					    	<option value="2013" >2013</option>
					    	<option value="2014" >2014</option>
					    	<option value="2015" >2015</option>
					    	<option value="2016" selected="selected">2016</option>
						</select>년  &nbsp
						<select name="month">
					    	<option value="1" selected="selected">1</option>
					    	<option value="2" >2</option>
					    	<option value="3" >3</option>
					    	<option value="4" >4</option>
					    	<option value="5" >5</option>
					    	<option value="6" >6</option>
					    	<option value="7" >7</option>
					    	<option value="8" >8</option>
					    	<option value="9" >9</option>
					    	<option value="10" >10</option>
					    	<option value="11" >11</option>
					    	<option value="12" >12</option>
					   	</select>월  &nbsp
					   		<select name="day">
					    	<option value="1" selected="selected">1</option>
					    	<option value="2" >2</option>
					    	<option value="3" >3</option>
					    	<option value="4" >4</option>
					    	<option value="5" >5</option>
					    	<option value="6" >6</option>
					    	<option value="7" >7</option>
					    	<option value="8" >8</option>
					    	<option value="9" >9</option>
					    	<option value="10" >10</option>
					    	<option value="11" >11</option>
					    	<option value="12" >12</option>
					    	<option value="13" >13</option>
					    	<option value="14" >14</option>
					    	<option value="15" >15</option>
					    	<option value="16" >16</option>
					    	<option value="17" >17</option>
					    	<option value="18" >18</option>
					    	<option value="19" >19</option>
					    	<option value="20" >20</option>
					    	<option value="21" >21</option>
					    	<option value="22" >22</option>
					    	<option value="23" >23</option>
					    	<option value="24" >24</option>
					    	<option value="25" >25</option>
					    	<option value="26" >26</option>
					    	<option value="27" >27</option>
					    	<option value="28" >28</option>
					    	<option value="29" >29</option>
					    	<option value="30" >30</option>
					    	<option value="31" >31</option>
					   </select>일&nbsp
					   <input type="button" value = "&nbsp&nbsp검색&nbsp&nbsp" >&nbsp&nbsp *최대 1년 단위 검색 가능
					   </td></tr>
					   </table>
					</div>
				</div>
				<div class="myPage1_tcb3"><font style="line-height:40px;"><b>예약 내역</b></font>
					<table>
					<tr><td colspan="7" bgcolor="#607d8b"></td></tr>
					<tr>
						
						<th width="130" height="40">예약날짜/<br>예약코드/결제</th>
						<th width="300">상품명</th>
						<th width="130">총 결제금액</th>
						<th width="100">인원</th>
						<th width="130">출발일/귀국일</th>
						<th width="100">예약상태</th>
						<th width="100">상품평</th>
					</tr>
					<tr><td colspan="7" bgcolor="#607d8b"></td></tr>
					<tr><td colspan="7" ><br><br>예약내역이 없습니다.<br><br><br><br></td></tr>
					<tr><td colspan="7" bgcolor="#607d8b"></td></tr>
					<tr><td colspan="7" bgcolor="#607d8b"></td></tr>
					</table>
				</div>
				<div class="myPage1_tcb4"><div class="tcb4a">
					<table><tr style="border: 1px solid red;">
					<td width="130" style="border: 1px solid red;"></td>
					<td width="736">
<pre><h4>· 투어닷컴 예약의 경우 상품을 직접 예약한 고객에게만 예약내역이 노출됩니다.

· 상품평 작성을 원하는 동반 고객은 우측에 있는 '상품평 작성'버튼을 클릭해 주세요. 

· 작성하신 글은  마이페이지 > 참여내역 > 여행후기 에서 확인 및 수정이 가능합니다.
</h4></pre></td>
					<td width="130" style="border: 1px solid red;"><input type="button" value="♡상품평 작성"></td>
					</tr>
					</table>
				</div>
			</div>
			<div class="myPage1_tcb5"><font style="line-height:40px;"><b>취소 내역</b></font>
				<table>
				<tr><td colspan="6" bgcolor="#607d8b"></td></tr>
				<tr>
					
					<th width="145" height="40">예약날짜/<br>예약코드</th>
					<th width="315">상품명</th>
					<th width="145">총 결제금액</th>
					<th width="105">인원</th>
					<th width="145">출발일/귀국일</th>
					<th width="115">예약상태</th>
					
				</tr>
				<tr><td colspan="6" bgcolor="#607d8b"></td></tr>
				<tr><td colspan="6" ><br><br>취소내역이 없습니다.<br><br><br><br></td></tr>
				<tr><td colspan="6" bgcolor="#607d8b"></td></tr>
				<tr><td colspan="6" bgcolor="#607d8b"></td></tr>
				</table>
			</div>
		</div>
		<div class="tbd">d
		</div>
	</div>
</body>
</html>