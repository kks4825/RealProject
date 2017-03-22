<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link rel="stylesheet" href="css/product/packages.css" />
<body id="package">
    <div id="wrapper-package">
    	<!-- 패키지 추가는 관리자권한에서만 볼 수 있게 수정 -->
        <input type="button" id="add-package" value="패키지 추가" onclick="location.href='/TravelAgency/package_upload_Form.do'"/>
        <!--패키지 추가하면 a태그가 추가되어야 함-->
        <section class="thumbnails">
        	<c:forEach var="productDTO" items="${list}">
	             <div class="productDIV">
	                <a href="/TravelAgency/detailView.do?seq=${productDTO.pack_no }">
	                    <!--이미지 가로 사이즈는 346px-->
	                    <img src="product_img/${productDTO.image1 }" />
	                    <h3>${productDTO.pack_city }</h3>
	                    	출발날짜:${productDTO.pack_depart }<br>
	                    	도착날짜:${productDTO.pack_arriv }<br>
	                    	가격(성인기준)<fmt:formatNumber pattern="#,##0원" value="${productDTO.pack_price_adult }"/>                    
	                </a>                
	            </div> 
           	</c:forEach>            
        </section>
    </div>
</body>
