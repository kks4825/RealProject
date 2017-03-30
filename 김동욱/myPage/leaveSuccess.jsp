<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
$(document).ready(function(){
	alert("회원탈퇴가 완료되었습니다. 그동안 황제투어를 이용해주셔서 감사합니다.");
	$(location).attr("href","/TravelAgency/index.do");
});
</script>