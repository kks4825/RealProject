<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html lang="ko">
<head>

<script type="text/javascript">
	function isLogin(seq){
		if('${memId}'=='')
			alert("먼저 로그인 하세요");
		else
			location.href="/TravelAgency/boardView.do?seq="+seq+"&pg=${pg}";
	}
	
	function boardPaging(pg){
		location.href="/TravelAgency/boardNotice.do?pg="+pg;
	}
	
	function boardSearchPaging(pg){
		location.href="/TravelAgency/board/boardSearch.do?pg="+pg
				+"&colName=${colName}&value="+encodeURIComponent("${value}");
	}
	
	function allCheck(){
		if(document.boardListForm.allcheck.checked==true){
			for(i=0; i<document.boardListForm.checkSeq.length; i++){
				document.boardListForm.checkSeq[i].checked=true;
			}
		}else{
			for(i=0; i<document.boardListForm.checkSeq.length; i++){
				document.boardListForm.checkSeq[i].checked=false;
			}
		}
	}
	
	function move(mode){
		
		/* var x = document.getElementsByName("zz");		
		
		 for(i=0; i<document.boardListForm.checkSeq.length; i++){
			if(document.boardListForm.checkSeq[i].checked==true){
				if('${sessionScope.memName}'!=x[i].childNodes[0].nodeValue) {
					alert("다른 사용자의 게시글을 지울수 없습니다."); 
					return; 
				}
			}
		}	 */ 	
			
		if(mode==1){
			document.boardListForm.action='/TravelAgency/boardSelectDelete.do?pg=${pg}';
			document.boardListForm.method='POST';
			document.boardListForm.submit();
	
		}else if(mode==2){
			document.boardListForm.action="/TravelAgency/boardSearch.do";
			document.boardListForm.method='POST';
			document.boardListForm.submit();
		} 
	} 
	
</script>

<meta charset="utf-8" />
<title>황제투어</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
<meta http-equiv='imagetoolbar' content='no' >
<link rel="stylesheet" type="text/css" href="css/board/ext-all.css">
<link rel="stylesheet" type="text/css" href="css/board/common.css">
<link rel="stylesheet" type="text/css" href="css/board/paging.css">

<script type="text/javascript" src="js/board/jquery.min.js"></script>
<script type="text/javascript" src="js/board/ext-jquery-adapter.js"></script>
<script type="text/javascript" src="js/board/ext-all-3.js"></script>
<script type="text/javascript" src="js/board/lang.js"></script>
<script type="text/javascript" src="js/board/common.js"></script>


<!-- 제이쿼리 버전 충돌로 인해 재설정 -->
<script type="text/javascript" src="js/board/jquery-1.11.3.min.js"></script>
<script>
	var jb = jQuery.noConflict();
</script>
<script type="text/javascript" src="js/board/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="js/board/project_ui.js"></script>
<script type="text/javascript" src="js/board/nav.js"></script>
<script type="text/javascript" src="js/board/keydown.js"></script>
<script type="text/javascript" src="js/board/bookmark.js"></script>
<!-- // -->

<link rel="stylesheet" type="text/css" href="css/board/reset.css?ver=1" />
<link rel="stylesheet" type="text/css" href="css/board/skin.css?ver=1" />
</head>

<body oncontextmenu="return false;" onselectstart="return false;" class="kr">

	<div id="content_sub">
		<div class="sub_container">

			<div class="sub_cont">
				<div class="sub_tit">
					<h3>공지사항</h3>
				</div><!--sub_tit-->
				<!--게시판(him_notice) 모듈 시작-->
				<div id='module_board' class='him_module' rel='him_notice'><!-- <script type="text/javascript" src="/skin/_modules/board/js/board.js"></script> -->
				<div class="sub_board">
					<form id="bbsSearchForm">
						
					</form>
			<form name="boardListForm">
					<table class="board_list">
						<thead>
						<tr>
							<th width="10%">
								<c:if test="${sessionScope.memId =='admin'}">
									<input name="allcheck" type="checkbox" onclick="allCheck()">
								</c:if>번호
							</th>
							<th width="50%">제목</th>
							<th width="#">이름</th>
							<th width="#">날짜</th>
							<th width="#">조회수</th>
						</tr>
						</thead>
					
					<c:if test="${list!=null }">
						<c:forEach var="boardDTO" items="${list }">
							<tbody>
								<tr>
									<td align="center">
									<c:if test="${sessionScope.memId == 'admin' }"><input type="checkbox" name="checkSeq" value="${boardDTO.seq }"></c:if>
										${boardDTO.seq }
									</td>
									
									<td class="left">
										<c:forEach var="i" begin="1" end="${boardDTO.lev }" step="1">
											&nbsp;&nbsp;&nbsp;
										</c:forEach>
										<c:if test="${boardDTO.pseq!=0 }">
											<img src="image/board/reply.gif">
										</c:if>
										<a href="#" id="subjectA" onclick="isLogin(${boardDTO.seq})">${boardDTO.subject }</a>
									</td>
									<td align="center"><span name="zz">${boardDTO.name }</span></td>
									<td align="center">${boardDTO.logtime }</td>
									<td align="center">${boardDTO.hit }</td>
								</tr>
							</tbody>
							
						</c:forEach>
							
					</c:if>

					</table><!--board_list-->
					
					<div class="paging">
						${boardPaging.pagingHTML }
					</div><!--paging-->
					<div>
						<c:if test="${sessionScope.memId == 'admin' }">
							<input type="button" value="선택삭제" onclick="move(1)" style="width:60px; height:30px;"/>
						</c:if>
					<div class="board_search">		
						<c:if test="${sessionScope.memId == 'admin' }">						
							<input type="button" value="글작성"  onclick="location.href='/TravelAgency/boardWriteForm.do'" style="width:60px; height:30px;">
						</c:if>						
							<select name="colName" class="select">
									<option value="subject" >제목</option>
									<option value="content" >내용</option>
									<option value="name" >작성자</option>
							</select>
							
							<input type="text" name="value" class="input_text">
							
							<input type="image" src="image/board/search_button.png" onclick="move(2)" style="width:55px; height:30px;" alt="검색">
						</div><!--board_search-->
						</div>
</form>

				</div><!--sub_board-->
</div>
				<!--게시판(him_notice) 모듈 끝-->
	</div><!--sub_cont-->

		</div><!--sub_container-->
	</div><!--content_sub-->

	<!-- <div id="footer">
<div class="footer_cont blind">
			<h2 class="blind">하단 네비게비게이션</h2>
			<ul class="footer_nav">
				<li class="first"><a href="/about/about">회사소개</a></li>
				<li><a href="/member/agreement">이용약관</a></li>
				<li><a href="/member/policy">개인정보취급방침</a></li>
				<li><a href="/about/location">오시는길</a></li>
			</ul>footer_nav
			<address>㈜황제투어 &#124; 대표이사: 김홍국 &#124; 소재지: 경기도 성남시 분당구 대왕판교로 660(삼평동) 유스페이스1 B동 4층<br/>사업자등록번호: 214-86-39239 &#124; 통신판매업 신고번호: 제2012-경기성남-1188호 </address>
			<p>&copy;Gabia Inc. All Rights Reserved.</p>
			<h2 class="blind">하단 SNS 버튼</h2>
			<ul class="footer_sns">
				<li><a href="https://www.facebook.com/" target="_blank"><img src="/skin/default/images/common/sns_facebook.gif" alt=""></a></li>
				<li><a href="http://section.blog.naver.com/" target="_blank"><img src="/skin/default/images/common/sns_blog.gif" alt=""></a></li>
				<li><a href="https://www.google.co.kr/" target="_blank"><img src="/skin/default/images/common/sns_google.gif" alt=""></a></li>
			</ul>footer_sns
		</div>footer_cont
		

		<address>
			<p>(주)황제투어&nbsp;&nbsp;|&nbsp;&nbsp;대표이사: 경기도 성남시 분당구 대왕판교로 660(삼평동) 유스페이스1 B동 4층&nbsp;&nbsp;|&nbsp;&nbsp;소재지: 경기도 성남시 분당구 대왕판교로 660(삼평동) 유스페이스1 B동 4층</p>
			<p>사업자등록번호: 214-86-39239&nbsp;&nbsp;|&nbsp;&nbsp;통신판매업 신고번호: 제2012-경기성남-1188호 </p>
			<p class="copy">Copyright@Gabia All rights Reserved</p>
		</address>
	</div>footer -->

<!--wrap-->


<!-- 하단 공통 footer 생성영역 -->

<!-- <script type="text/javascript">
var sidebarurl = "http://skin14.dartplus.kr/"; // Change as required 
var sidebartitle = "황제투어"; // Change as required 
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
</script> -->

</body>