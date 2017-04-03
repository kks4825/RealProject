<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.postSize {font-size:11px;}

#zipcodeA:link { color: black; text-decoration: none;}
#zipcodeA:visited { color: black; text-decoration: none;}
#zipcodeA:hover { color: green; text-decoration: underline; font-weight: bold;}
#zipcodeA:active { color: black; text-decoration: none;}
</style>

<script type="text/javascript">
function checkPostClose(zipcode, address){
	
	opener.document.getElementById("zip").value = zipcode;
	opener.document.getElementById("address1").value=address;
	window.close();
	opener.document.getElementById("address2").focus();
}
</script>
</head>
<body>
<form name="" method="post" action="/TravelAgency/checkPost.do">
<div class="postSize">
<table border="1" cellpadding="3" cellspacing="0" width="100%">
<tr>
	<td>시/도</td>
	<td>
		<select name="sido" style ="width:100px">
		<option value="">시도선택</option>
		<option value="서울">서울</option>
		<option value="강원">강원</option>
		<option value="경기">경기</option>
		<option value="경남">경남</option>
		<option value="경북">경북</option>
		<option value="광주">광주</option>
		<option value="대구">대구</option>
		<option value="대전">대전</option>
		<option value="부산">부산</option>
		<option value="세종">세종</option>
		<option value="울산">울산</option>
		<option value="인천">인천</option>
		<option value="전남">전남</option>
		<option value="전북">전북</option>
		<option value="제주">제주</option>
		<option value="충남">충남</option>
		<option value="충북">충북</option>
		</select>
	</td>
	<td>시/군/구</td>
	<td><input type="text" name="sigungu" size="10"></td>
</tr>
<tr>
	<td>도로명</td>
	<td colspan="3">
		<input type="text" name="roadname">
		<input type="submit" value="검색"/>
	</td>
</tr>
<tr>
	<td>우편번호</td>
	<td colspan="3" align="center">주소</td>
</tr>

<c:if test="${list!=null }">
	<c:forEach var="zipcodeDTO" items="${list }">
	
		<c:set var="address">${zipcodeDTO.sido 
		                     } ${zipcodeDTO.sigungu
		                     } ${zipcodeDTO.yubmyundong
		                     } ${zipcodeDTO.ri 
		                     } ${zipcodeDTO.roadname 
		                     } ${zipcodeDTO.buildingname }</c:set>
	
	<tr>
		<td align="center">${zipcodeDTO.zipcode }</td>
		<td colspan="3">
		<a id="zipcodeA" href="#" onclick="checkPostClose('${zipcodeDTO.zipcode }','${address }')">${address }</a>
		</td>
	</tr>
	</c:forEach>
</c:if>

</table>
</div>
</form>
</body>
</html>




