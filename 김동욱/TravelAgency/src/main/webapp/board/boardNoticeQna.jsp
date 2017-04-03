<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/board/paging.css">

<div id="content_sub">
	<div class="sub_container">

		<div class="sub_cont">
			<div class="sub_tit">
				<h3>1:1 상담센터</h3>
			</div>
			<!--sub_tit-->
			<!--게시판(him_notice) 모듈 시작-->
			<div id='module_board' class='him_module' rel='him_notice'>
				<!-- <script type="text/javascript" src="/skin/_modules/board/js/board.js"></script> -->
				<div class="sub_board">
					<form id="bbsSearchForm"></form>
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
											<td class="left"><c:forEach var="i" begin="1"
													end="${boardDTO.lev }" step="1">
											&nbsp;&nbsp;&nbsp;
										</c:forEach> <c:if test="${boardDTO.pseq!=0 }">
													<img src="image/board/reply.gif">
												</c:if> <a href="#" id="subjectA"
												onclick="isLogin(${boardDTO.seq})">${boardDTO.subject }</a>
											</td>
											<td align="center"><span name="zz">${boardDTO.name }</span></td>
											<td align="center">${boardDTO.logtime }</td>
										</tr>
									</tbody>
								</c:forEach>
							</c:if>


						</table>
						<!--board_list-->

						<div class="paging">${boardQnaPaging.pagingHTML }</div>
						<!--paging-->
						<div>
							<!-- <input type="button" value="선택삭제" onclick="move(1)" style="width:60px; height:30px;"/> -->

							<div class="board_search">

								<input type="button" value="글작성"
									onclick="location.href='/TravelAgency/boardQnaWriteForm.do'"
									style="width: 60px; height: 30px;"> <select
									name="colName" class="select">
									<option value="subject">제목</option>
									<option value="content">내용</option>
									<option value="name">작성자</option>
								</select> <input type="text" name="value" class="input_text"> <input
									type="image" src="image/board/search_button.png"
									onclick="move(2)" style="width: 55px; height: 30px;" alt="검색">
							</div>
							<!--board_search-->

						</div>
					</form>

				</div>
				<!--sub_board-->
			</div>
			<!--게시판(him_notice) 모듈 끝-->
		</div>
		<!--sub_cont-->

	</div>
	<!--sub_container-->
</div>
<!--content_sub-->
