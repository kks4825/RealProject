<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="css/product/thumbnail.css?ver=1" />
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" />
<script src="http://code.jquery.com/jquery-1.3.2.min.js" ></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js" ></script> 
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.0/jquery.validate.min.js" ></script>
<script>try{Typekit.load();}catch(e){}</script>
<script>
$(window).load(function() {
	  $('.post-module').hover(function() {
	    $(this).find('.description').stop().animate({
	      height: "toggle",opacity: "toggle"}, 300);
	  });
	});
</script>

<div class="container">
  <div class="info">
    <h1><c:if test="${category eq 'eu'}">
        Europe</c:if>
        <c:if test="${category eq 'ea'}">
        East Asia</c:if>
        <c:if test="${category eq 'am'}">
        America</c:if>
        <c:if test="${category eq 'search' }">
                검색결과
        </c:if>
    </h1>
    <c:if test="${sessionScope.memId=='admin'}">
        	<input type="button" id="add-package" value="패키지 추가" 
        	onclick="location.href='/TravelAgency/package_upload_Form.do'"/>
    </c:if>
  </div>
  <!-- Normal Demo-->
  <c:forEach var="productDTO" items="${list}">
  <div class="column">
  <a href="/TravelAgency/detailView.do?seq=${productDTO.pack_no }">
    <!-- Post-->    
    <div class="post-module">
      <!-- Thumbnail-->      
      <div class="thumbnail">
      	<img src="product_img/${productDTO.image1 }"/>
      </div>
      <!-- Post Content-->
      <div class="post-content">
        <div class="category">Photos</div>
        <h1 class="title">${productDTO.pack_title }</h1>
        <h2 class="sub_title">출발날짜:${productDTO.pack_depart }<br>
	                    	   도착날짜:${productDTO.pack_arriv }<br></h2>
        <p class="description">${productDTO.pack_city }<br>
	                    	가격(성인기준)<fmt:formatNumber pattern="#,##0원" value="${productDTO.pack_price_adult }"/>
	                    	</p>
      </div>
   	 </div>
  </div>
  </c:forEach> 