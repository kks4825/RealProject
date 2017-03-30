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
			location.href="/TravelAgency/boardQnaView.do?seq="+seq+"&pg=${pg}&category=${category}";
	}
	
	function boardQnaPaging(pg){
		location.href="/TravelAgency/boardNoticeQna.do?pg="+pg;
	}
	
	function boardSearchPaging(pg){
		location.href="/TravelAgency/boardQnaSearch.do?pg="+pg
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
		if(mode==1){
			document.boardListForm.action='/TravelAgency/boardSelectDelete.do?pg=${pg}';
			document.boardListForm.method='POST';
			document.boardListForm.submit();
	
		}else if(mode==2){
			document.boardListForm.action="/TravelAgency/boardQnaSearch.do";
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
					<h3>1:1 상담센터</h3>
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
							<th width="10%">번호</th>
							<th width="10%">분류</th>
							<th width="45%">제목</th>
							<th width="#">이름</th>
							<th width="#">날짜</th>
						</tr>
						</thead>
					
					<c:if test="${list!=null }">
						<c:forEach var="boardDTO" items="${list }">
							<tbody>
								<tr>
									<td align="center">${boardDTO.seq }</td>
									<td align="center">${boardDTO.category }</td>
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
								</tr>
							</tbody>
						</c:forEach>
					</c:if>
					

					</table><!--board_list-->
					
					<div class="paging">
						${boardQnaPaging.pagingHTML }
					</div><!--paging-->
					<div>
						<!-- <input type="button" value="선택삭제" onclick="move(1)" style="width:60px; height:30px;"/> -->
					
					<div class="board_search">			
											
							<input type="button" value="글작성"  onclick="location.href='/TravelAgency/boardQnaWriteForm.do'" style="width:60px; height:30px;">
											
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

	

</body>