<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="X-UA-Compatible" content="IE=8" />
<meta http-equiv='imagetoolbar' content='no' >
<link rel="stylesheet" type="text/css" href="css/board/ext-all.css">
<link rel="stylesheet" type="text/css" href="css/board/common.css">
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


<link rel="stylesheet" type="text/css" href="css/board/reset.css?ver=3" />
<link rel="stylesheet" type="text/css" href="css/board/skin.css?ver=3" />


<body oncontextmenu="return false;" onselectstart="return false;" class="kr">

	<div id="content_sub">
		<div class="sub_container">

<div class="sub_menu">
				<!--leftmenu영역시작-->

				<!--leftmenu영역끝-->
			</div><!--sub_menu-->

			<div class="sub_cont">
				<div class="sub_tit">
					<h3>질문과 답변</h3>

				</div><!--sub_tit-->
				<!--게시판(him_notice) 모듈 시작-->
				<div id='module_board' class='him_module' rel='qna'><div class="sub_board">
					<table class="board_css">
						<tr>
							<th colspan="4">${boardDTO.subject}</th>
						</tr>
						<tr>
							<td colspan="4">
								<p class="fot_l">
									<em>작성자</em>
									<span>&nbsp;&nbsp;|&nbsp;&nbsp;${boardDTO.name }</span>
									<span class="date">${boardDTO.logtime }</span>
								</p>
								<p class="fot_r">
									<em>조회수</em>
									<span>&nbsp;&nbsp;|&nbsp;&nbsp;${boardDTO.hit }</span>
								</p>
							</td>
						</tr>
						<tr>
							<td colspan="4">
								<div class="view_cont">
									<pre style="background-color:#ffffff;">${boardDTO.content }</pre>
									<%-- <textarea style="width:100%; height:100%;" readonly>${boardDTO.content }</textarea> --%>
								</div><!--view_cont-->
							</td>
						</tr>



					</table><!--board_css-->

					<div id="comment_area"></div>
					<!--// 댓글 -->

					<div class="btn_center">
						<a href="#" onclick="location.href='boardNotice.do?pg=${pg}'" class="btn blue">목록</a>
						<c:if test="${sessionScope.memName==boardDTO.name }">
							<a href="boardModifyForm.do?seq=${boardDTO.seq}&pg=${pg}" class="btn gray">수정</a>
							<a href="boardDelete.do?seq=${boardDTO.seq}" class="btn gray">삭제</a>
						</c:if>
						<a href="boardReplyForm.do?pseq=${boardDTO.seq }&pg=${pg }" class="btn gray">답글</a>
					</div><!--btn_center-->
					</div><!--sub_board-->
				</div>				
			</div>
		</div>
	</div> 

</body>
</html>