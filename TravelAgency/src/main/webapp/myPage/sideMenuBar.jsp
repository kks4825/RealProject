<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script>
$(document).ready(function(){
	
});
</script>

<div class="tbb">
	<ul>
		<li class="tca"><a href="/TravelAgency/mypage1AfterInfoChange.do">나의 예약보기</a></li>
		<li class="tca"><a href="/TravelAgency/myBasket.do">나의 장바구니</a></li>
		<li class="tca"><a href="#">나의 참여내역</a>
			<ul>
				<li><a href="/TravelAgency/myConsultation.do">상담문의</a></li>
				<li><a href="/TravelAgency/myReview.do">여행후기</a></li>
			</ul></li>
		<li class="tca"><a href="#">나의 정보관리</a>
			<ul>
				<li><a href="/TravelAgency/myPageInputPwd.do?pg=myBasicInfo">기본정보변경</a></li>
				<li><a href="/TravelAgency/myPageInputPwd.do?pg=myPwdChange">비밀번호변경</a></li>
				<li><a href="/TravelAgency/myPageInputPwd.do?pg=myPassport_visa">여권/비자관리</a></li>
			</ul>
		</li>
		<li class="tca"><a href="#">회원탈퇴</a></li>
	</ul>
</div>