<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="css/product/packages.css" />
<!-- <script>
$(document).ready(function(){
	var divs = $('.divTableCell').length;
	for(var i=1;i<=divs;i++){
		if(i%3==0){
			var divRows = document.createElement("div");
			divRows.setAttribute("class","divTableRow");
			$('.divTableCell').wrap(divRows);	
			alert(i);
		}
	}
});	
</script> -->
<style>
</style>
<body id="package">
    <div id="wrapper-package">
    	<!-- ��Ű�� �߰��� �����ڱ��ѿ����� �� �� �ְ� ���� -->
        <input type="button" id="add-package" value="��Ű�� �߰�" onclick="location.href='/TravelAgency/package_upload_Form.do'"/>
        <!--��Ű�� �߰��ϸ� a�±װ� �߰��Ǿ�� ��-->
        <section class="thumbnails">
        	<c:forEach var="productDTO" items="${list}">
	             <div class="productDIV">
	                <a href="/TravelAgency/detailView.do?seq=${productDTO.pack_no }">
	                    <!--�̹��� ���� ������� 346px-->
	                    <img src="product_img/${productDTO.image1 }" />
	                    <h3>${productDTO.pack_city }</h3>
	                    	��߳�¥:${productDTO.pack_depart }<br>
	                    	������¥:${productDTO.pack_arriv }<br>
	                    	����(���α���)<fmt:formatNumber pattern="#,##0��" value="${productDTO.pack_price_adult }"/>                    
	                </a>                
	            </div> 
           	</c:forEach>            
        </section>
    </div>
</body>
</html>