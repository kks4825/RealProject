<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
$(document).ready(function(){
	alert("비밀번호가 일치하지 않습니다");
	location.href="/TravelAgency/myPageInputPwd.do?pg=${sessionScope.pg}";
});
</script>