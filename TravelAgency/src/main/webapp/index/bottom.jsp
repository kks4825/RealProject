<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- 하단 공통 footer 생성영역 -->

<script>
var sidebarurl = "http://skin14.dartplus.kr/"; // Change as required 
var sidebartitle = "가비아"; // Change as required 
var url = this.location; 
var title = document.title; 

function bookmarksite() { 
if (window.sidebar && window.sidebar.addPanel){ // Firefox 
window.sidebar.addPanel(sidebartitle, sidebarurl,""); 
} 
else if ( document.all ) { // IE Favorite 
window.external.AddFavorite(url, title); 
} 
else if (window.opera && window.print) { 
// do nothing 
 } 
else if (navigator.appName=="Netscape") { 
alert("확인을 클릭하신 후 주소창에서 <Ctrl-D>를 누르시면 즐겨찾기에 등록됩니다."); 
} 
 } 

 if (window.sidebar && window.sidebar.addPanel) { 
  document.write('<a href = "javascript:bookmarksite();"></a>'); 
  } 
 else if (document.all) { 
  document.write('<a href = "javascript:bookmarksite();"></a>'); 
 } 
 else if (window.opera && window.print) { 
document.write('<a href = "'+sidebarurl+'" title="'+sidebartitle+'" rel="sidebar"></a>'); 
 } 
 else if (navigator.appName=="Netscape") { 
  document.write('<a href = "javascript:bookmarksite();"></a>'); 
} 
</script>
	
	<div id="footer">
<div class="footer_cont blind">
			<h2 class="blind">하단 네비게비게이션</h2>
			<ul class="footer_nav">
				<li class="first"><a href="/about/about">회사소개</a></li>
				<li><a href="/member/agreement">이용약관</a></li>
				<li><a href="/member/policy">개인정보취급방침</a></li>
				<li><a href="/about/location">오시는길</a></li>
			</ul><!--footer_nav-->
			<address>㈜황제투어 &#124; 대표이사: 김동욱 &#124; 소재지: 경기도 성남시 분당구 대왕판교로 660(삼평동) 유스페이스1 B동 4층<br/>사업자등록번호: 214-86-39239 &#124; 통신판매업 신고번호: 제2012-경기성남-1188호 </address>
			<h2 class="blind">하단 SNS 버튼</h2>
			<ul class="footer_sns">

			</ul><!--footer_sns-->
		</div><!--footer_cont-->
		

		<address>
			<p>(주)황제투어&nbsp;&nbsp;|&nbsp;&nbsp;대표이사:김동욱 &nbsp;소재지:경기도 성남시 분당구 대왕판교로 660(삼평동) 유스페이스1 B동 4층&nbsp;&nbsp;|&nbsp;&nbsp;소재지: 경기도 성남시 분당구 대왕판교로 660(삼평동) 유스페이스1 B동 4층</p>
			<p>사업자등록번호: 214-86-39239&nbsp;&nbsp;|&nbsp;&nbsp;통신판매업 신고번호: 제2012-경기성남-1188호 </p>
		</address>
	</div><!--footer-->