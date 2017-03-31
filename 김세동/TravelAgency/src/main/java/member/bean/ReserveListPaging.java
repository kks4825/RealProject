package member.bean;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

import member.dao.MemberDAO;
import product.bean.ProductDTO;

@Component
public class ReserveListPaging {
	@Autowired
	private MemberDAO memberDAO;
	
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
	
	public void makePagingHTML(String memId){
		pagingHTML = new StringBuffer();
		
		int totalA = memberDAO.getTotalA(memId);	//총글수
		int totalP = (totalA+pageSize-1)/pageSize;	//총페이지수
		
		int startPage = (currentPage-1)/pageBlock*pageBlock+1;
		int endPage = startPage+pageBlock-1;
		
		if(endPage > totalP) endPage = totalP;
		
		if(startPage>pageBlock)
			pagingHTML.append("[<span id=paging onclick=ReserveListPaging("+(startPage-1)+")>이전</span>]");
		
		for(int i=startPage;i<=endPage;i++){
			if(i==currentPage)
				pagingHTML.append("[<span id=currentPaging onclick=ReserveListPaging("+i+")>"+i+"</span>]");
			else
				pagingHTML.append("[<span id=paging onclick=ReserveListPaging("+i+")>"+i+"</span>]");
		}	
		
		if(endPage < totalP)
			pagingHTML.append("[<span id=paging onclick=ReserveListPaging("+(endPage+1)+")>다음</span>]");
	}
	public void makePagingHTML(Map<String, String> map) {
		pagingHTML = new StringBuffer();
		
		int totalA = memberDAO.getTotalA(map);//총글수
		System.out.println("totalA = "+totalA);
		int totalP = (totalA+pageSize-1)/pageSize;	//총페이지수
		int startPage = (currentPage-1)/pageBlock*pageBlock+1;
		int endPage = startPage+pageBlock-1;
		
		if(endPage > totalP) endPage = totalP;
		
		if(startPage>pageBlock)
			pagingHTML.append("[<span id=paging onclick=searchReserveListPaging("+(startPage-1)+")>이전</span>]");
		for(int i=startPage;i<=endPage;i++){
			if(i==currentPage)
				pagingHTML.append("[<span id=currentPaging onclick=searchReserveListPaging("+i+")>"+i+"</span>]");
			else
				pagingHTML.append("[<span id=paging onclick=searchReserveListPaging("+i+")>"+i+"</span>]");
		}	
		
		if(endPage < totalP)
			pagingHTML.append("[<span id=paging onclick=searchReserveListPaging("+(endPage+1)+")>다음</span>]");
	}
}









/*public void makePagingHTML(Map<String, String> map) {
	pagingHTML = new StringBuffer();
	
	String memId = SecurityContextHolder.getContext().getAuthentication().getName();
	map.put("memId", memId);
	
	List<ProductDTO> list = memberDAO.getPack_no(memId);
	
	int totalA = 0;
	for(int i=0; i<list.size(); i++){
		Map<String,Object> map1 = new HashMap<String,Object>();
		map1.put("citySearch", map.get("citySearch"));
		map1.put("pack_no", list.get(i).getPack_no());
		int su = memberDAO.getTotalA(map1);
		System.out.println("su = "+su);
		if(su==1){
			totalA = totalA+1;
		}
	}
	
	int totalA = memberDAO.getTotalA(map);	//총글수
	int totalP = (totalA+pageSize-1)/pageSize;	//총페이지수
	int startPage = (currentPage-1)/pageBlock*pageBlock+1;
	int endPage = startPage+pageBlock-1;
	
	if(endPage > totalP) endPage = totalP;
	
	if(startPage>pageBlock)
		pagingHTML.append("[<span id=paging onclick=searchReserveListPaging("+(startPage-1)+")>이전</span>]");
	for(int i=startPage;i<=endPage;i++){
		if(i==currentPage)
			pagingHTML.append("[<span id=currentPaging onclick=searchReserveListPaging("+i+")>"+i+"</span>]");
		else
			pagingHTML.append("[<span id=paging onclick=searchReserveListPaging("+i+")>"+i+"</span>]");
	}	
	
	if(endPage < totalP)
		pagingHTML.append("[<span id=paging onclick=searchReserveListPaging("+(endPage+1)+")>다음</span>]");
}

*/







