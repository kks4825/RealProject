<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
$(document).ready(function(){
	if('${pg}'=='myBasicInfo')
		$(location).attr("href","/TravelAgency/myBasicInfo.do");
	else if('${pg}' == 'myPwdChange')
		$(location).attr("href","/TravelAgency/myPwdChange.do");
	else if('${pg}' == 'myPassport')
		$(location).attr("href","/TravelAgency/myPassport.do");
	else
		$(location).attr("href","/TravelAgency/memberLeave.do");
});
</script>