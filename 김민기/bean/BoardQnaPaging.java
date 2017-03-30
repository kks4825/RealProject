package board.bean;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import board.dao.BoardDAO;

@Component
public class BoardQnaPaging {
	@Autowired
	private BoardDAO boardDAO;
	
	private int currentPage;//현재페이지
	private int pageBlock;//[이전][1][2][3][다음]
	private int pageSize;//1페이지당 5개씩
	private StringBuffer pagingHTML;
	private String id;
	
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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public void makePagingHTML(){
		pagingHTML = new StringBuffer();			
		
		int getTotalA = boardDAO.getTotalQnaA(id);//총글수
		int totalP = (getTotalA+pageSize-1)/pageSize;//총페이지수
		
		int startPage = (currentPage-1)/pageBlock*pageBlock+1;
		int endPage = startPage+pageBlock-1;
		if(endPage > totalP) endPage = totalP;
		
		if(startPage>pageBlock)
			pagingHTML.append("<span id=paging onclick=boardQnaPaging("+(startPage-1)+")><img src='image/board/page_left.png' style='height:30px; width:30px;'>&nbsp;&nbsp;</span>");
			
		for(int i=startPage; i<=endPage; i++){
			if(i==currentPage)
				pagingHTML.append("[<span id=currentPaging onclick=boardQnaPaging("+i+")>"+i+"</span>]");
			else
				pagingHTML.append("[<span id=paging onclick=boardQnaPaging("+i+")>"+i+"</span>]");
		}
		
		if(endPage<totalP)
			pagingHTML.append("&nbsp;&nbsp;<span id=paging onclick=boardQnaPaging("+(endPage+1)+")><img src='image/board/page_right.png' style='height:30px; width:30px;'></span>");	
	}
	
	public void makePagingHTML(Map<String,String> map){
		pagingHTML = new StringBuffer();
		
		int getTotalQnaA = boardDAO.getTotalQnaA(map);	//검색 된 총글수
		int totalP = (getTotalQnaA+pageSize-1)/pageSize;	//총페이지수
		
		int startPage = (currentPage-1)/pageBlock*pageBlock+1;
		int endPage = startPage+pageBlock-1;
		if(endPage > totalP) endPage = totalP;
		
		if(startPage>pageBlock)
			pagingHTML.append("<span id=paging onclick=boardSearchPaging("+(startPage-1)+")><img src='image/board/page_left.png' style='height:30px; width:30px;'>&nbsp;&nbsp;</span>");
			
		for(int i=startPage; i<=endPage; i++){
			if(i==currentPage)
				pagingHTML.append("[<span id=currentPaging onclick=boardSearchPaging("+i+")>"+i+"</span>]");
			else
				pagingHTML.append("[<span id=paging onclick=boardSearchPaging("+i+")>"+i+"</span>]");
		}
		
		if(endPage<totalP) 
			pagingHTML.append("&nbsp;&nbsp;<span id=paging onclick=boardSearchPaging("+(endPage+1)+")>&nbsp;&nbsp;&nbsp;<img src='image/board/page_right.png' style='height:30px; width:30px;'></span>");	
	}
}
