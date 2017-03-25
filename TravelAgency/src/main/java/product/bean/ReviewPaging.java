package product.bean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import product.dao.ProductDAO;

@Component
public class ReviewPaging {
	@Autowired
	private ProductDAO productDAO;
	
	private int currentPage;	//현재페이지
	private int pageBlock;	//[이전][1][2][3][다음]
	private int pageSize;	//1페이지당 5개씩
	private StringBuffer pagingHTML;
	
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public void setPageBlock(int pageBlock) {
		this.pageBlock = pageBlock;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public StringBuffer getPagingHTML() {
		return pagingHTML;
	}
	
	public void makePagingHTML(int pack_no){
		pagingHTML = new StringBuffer();
		
		int totalA = productDAO.getTotalA(pack_no);	//총글수
		int totalP = (totalA+pageSize-1)/pageSize;	//총페이지수
		
		int startPage = (currentPage-1)/pageBlock*pageBlock+1;
		int endPage = startPage+pageBlock-1;
		
		if(endPage > totalP) endPage = totalP;
		
		if(startPage>pageBlock)
			pagingHTML.append("<a href=# id=paging onclick=reviewPaging("+(startPage-1)+")>&laquo;</a>");
			
		for(int i=startPage; i<=endPage; i++){
			if(i==currentPage)
				pagingHTML.append("<a href=# id=currentPaging onclick=reviewPaging("+i+")>"+i+"</span>");
			else
				pagingHTML.append("<a href=# id=paging onclick=reviewPaging("+i+")>"+i+"</span>");
		}
		
		if(endPage<totalP)
			pagingHTML.append("<a href=# id=paging onclick=reviewPaging("+(endPage+1)+")>&raquo;</span>");	
	}
}









