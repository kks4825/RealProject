package member.bean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import member.dao.MemberDAO;

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
			pagingHTML.append("<a id=paging href=myPage1.do?pg="+(startPage-1)+">[이전]</a>");
		
		for(int i=startPage;i<=endPage;i++){
			if(i==currentPage)
				pagingHTML.append("[<a id=currentPaging href=myPage1.do?pg="+i+">"+i+"</a>]");
			else
				pagingHTML.append("[<a id=paging href=myPage1.do?pg="+i+">"+i+"</a>]");
		}	
		
		if(endPage < totalP)
			pagingHTML.append("<a id=paging href=myPage1.do?pg="+(endPage+1)+">[다음]</a>");
		
	}
	
	
}









