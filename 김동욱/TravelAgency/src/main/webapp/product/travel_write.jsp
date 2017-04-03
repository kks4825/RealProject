<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script src="js/myPage/myPage1.js?ver=1"></script>
<script>
function reviewWrite(){
    if(document.getElementById('subject').value==""){
        alert("상품평 제목을 입력해 주세요");
    }else if(document.getElementById('starscore').value==""){
        alert("별점을 선택해 주세요");
    }else if(document.getElementById('content').value==""){
        alert("상품평 내용을 입력해 주세요");
    }else{
        document.reviewWriteForm.submit();
        opener.location.reload();
    }    
}
</script>
<div class="header" style="text-align:left; ">
	<font size=5 face="Comic Sans MS"><strong>여행후기</strong></font><br><br>
</div>

<div class="title" style="border-top:2px solid black; border-bottom:2px solid black; 
							width:505px; height:490px;"><br>
<form name="reviewWriteForm" method="post" action="/TravelAgency/reviewWrite.do">	
	<input type="hidden" name="pack_no" value="${pack_no }"/>
	<table width="500" height="450" cellpadding="4" style="border:1px gray solid;">
	<tr>
		<td width="150" height="20" align="center" style="background-color:#D9E5FF;"><b>제목</b> </td>
		<td><input type="text" name="subject" placeholder="제목 입력" id="subject"
					size="53" style="height:20px; border:1px solid blue;"/></td>
	</tr>
	
	<tr>
		<td width="150" height="20" align="center" style="background-color:#D9E5FF;"><b>작성자</b> </td>
		<td><input type="text" name="name" size="10" readonly
					style="height:20px; border:1px solid blue;"  value="${memberDTO.memName }" /></td>
	</tr>
	
	<tr>
		<td width="200" height="20" align="center" style="background-color:#D9E5FF;"><b>상품별점</b> </td>
		<td>
			<select name="starscore" id="starscore"style="width:125px; border:1px solid blue; color:<?=$score_color?>"> 
				<option value="" selected>상품 별점 선택 </option> 
				<option value="1" >★ (1)</option> 
				<option value="2" >★★ (2)</option> 
				<option value="3" >★★★ (3)</option> 
				<option value="4" >★★★★ (4)</option> 
				<option value="5" >★★★★★ (5)</option> 
			</select>
		</td>
	</tr>
	
	<tr>
		<td width="100" height="120" align="center" style="background-color:#D9E5FF;"><b>내용</b></td>
		<td>
			<textarea name="content" cols="55" rows="18" id="content" style="border:1px solid blue; resize:none;"></textarea>
		</td>
	</tr>
	
	<tr>
		<td colspan="2" align="center">
			<input type="button" style="border:none; width:40pt;height:25pt; background-color:#36589C; 
			 						color:#FFFFFF;" value="등록" onclick="javascript:reviewWrite()">&nbsp;&nbsp;
	   		<input type="reset" style="border:none; width:40pt;height:25pt; background-color:#36589C; 
	   								color:#FFFFFF;" value="취소" onclick="window.close()">
		</td>
	</tr>
</table>
</form>
</div>