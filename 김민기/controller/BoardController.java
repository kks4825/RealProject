package board.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import board.bean.BoardDTO;
import board.bean.BoardPaging;
import board.bean.BoardQnaPaging;
import board.dao.BoardDAO;


@Controller
@Component
public class BoardController {
	@Autowired
	private BoardDAO boardDAO;
	@Autowired
	private BoardPaging boardPaging;
	@Autowired
	private BoardQnaPaging boardQnaPaging;
	
	
	@RequestMapping(value="/boardNotice.do", method = RequestMethod.GET)
	public ModelAndView boardNotice(@RequestParam(required=false) String pg,
									@CookieValue(value="boardSeq",required=false,defaultValue="")String boardSeq,
									HttpServletResponse response){
		Cookie cookie = new Cookie("boardSeq", boardSeq);
		cookie.setMaxAge(0);
		response.addCookie(cookie);
		
		if(pg==null) pg="1";
		
		int endNum = Integer.parseInt(pg) * 5;
		int startNum = endNum-4;
		
		//DB
		List<BoardDTO> list = boardDAO.boardNotice(startNum,endNum);
		
		//페이징처리
		boardPaging.setCurrentPage(Integer.parseInt(pg));
		boardPaging.setPageBlock(3);
		boardPaging.setPageSize(5);
		boardPaging.makePagingHTML();
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("pg", pg);
		mav.addObject("list", list);
		mav.addObject("boardPaging", boardPaging);
		mav.addObject("display", "/board/boardNotice.jsp");
		mav.setViewName("/index/index");
		
		return mav;
	}
	
	@RequestMapping(value="/boardWriteForm.do", method = RequestMethod.GET)
	public ModelAndView boardWriteForm(){
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display", "/board/boardWriteForm.jsp");
		mav.setViewName("/index/index");
		return mav;
	}
	
	@RequestMapping(value="/boardWrite.do", method = RequestMethod.POST)
	public String boardWrite(@RequestParam Map<String,String> map,
							  Model model,
							  HttpSession session){
		String id = (String) session.getAttribute("memId");
		String name =(String) session.getAttribute("memName");
		
		map.put("id", id);
		map.put("name", name);
		
		//DB
		boardDAO.boardWrite(map);
		model.addAttribute("display", "/board/boardWrite.jsp");
		
		return "/index/index";
	}
	
	@RequestMapping(value="/boardSearch.do", method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView boardSearch(@RequestParam String colName,
									@RequestParam String value,
									@RequestParam(required=false) String pg){
		if(pg==null) pg="1";
		
		int endNum = Integer.parseInt(pg)*5;
		int startNum = endNum-4;
		
		Map<String,String> map = new HashMap<String,String>();
		map.put("colName", colName);
		map.put("value", value);
		map.put("startNum", startNum+"");
		map.put("endNum", endNum+"");
		
		List<BoardDTO> list = boardDAO.boardSearch(map);
		
		//페이징처리
		boardPaging.setCurrentPage(Integer.parseInt(pg));
		boardPaging.setPageBlock(3);
		boardPaging.setPageSize(5);
		boardPaging.makePagingHTML(map);
				
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("list",list);
		mav.addObject("colName", colName);
		mav.addObject("value", value);
		mav.addObject("boardPaging", boardPaging);
		mav.addObject("display", "/board/boardNotice.jsp");
		
		mav.setViewName("/index/index");
		
		return mav;
	}
	
	@RequestMapping(value="/boardView.do", method=RequestMethod.GET)
	public ModelAndView boardView(@RequestParam int seq,
								  @RequestParam String pg,
								  HttpServletResponse response,
								  @CookieValue(value="boardSeq", required=false, defaultValue="")String boardSeq){
		//새로고침으로 인한 조회수 증가 방지
		boolean isCookie = false;
		String cookieTemp = "";
		
		cookieTemp = boardSeq;
		
		if(cookieTemp.length()==0){
			cookieTemp += "|"+seq+"|";
			Cookie cookie = new Cookie("boardSeq", cookieTemp);
			cookie.setMaxAge(30*60);
			response.addCookie(cookie);
			isCookie = true;
			System.out.println("bb");
		}		
		
		//조회수 증가
		if(isCookie){
			boardDAO.addHit(seq);
		}
		
		BoardDTO boardDTO = boardDAO.boardView(seq);
						
		ModelAndView mav = new ModelAndView();
		mav.addObject("pg", pg);
		mav.addObject("boardDTO", boardDTO);
		mav.addObject("display", "/board/boardView.jsp");
		mav.setViewName("/index/index");
		return mav;
	}
	
	@RequestMapping(value="/boardDelete.do", method=RequestMethod.GET)
	public String boardDelete(@RequestParam int seq,
							  Model model){
		boardDAO.boardDelete(seq);
		
		model.addAttribute("display", "/board/boardDelete.jsp");
				
		return "/index/index";
	}
	
	@RequestMapping(value="/boardReplyForm.do", method=RequestMethod.GET)
		public ModelAndView boardReplyForm(@RequestParam int pseq,
										   @RequestParam int pg){
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("pseq", pseq);
		mav.addObject("pg", pg);
		mav.addObject("display", "/board/boardReplyForm.jsp");
		
		mav.setViewName("/index/index");
		
		return mav;	
	}
	
	@RequestMapping(value="/boardReply.do", method=RequestMethod.POST)
	public String boardReply(@RequestParam Map<String, String> map,
							 ModelMap modelMap,
							 HttpSession session){
		//데이터
		String id = (String) session.getAttribute("memId");
		String name = (String) session.getAttribute("memName");
		
		map.put("id", id);
		map.put("name", name);
		
		//DB
		boardDAO.boardReply(map);
		
		modelMap.addAttribute("pg", map.get("pg"));
		modelMap.addAttribute("display", "/board/boardReply.jsp");
		
		return "/index/index";		
	}
	
	@RequestMapping(value="/boardSelectDelete.do", method=RequestMethod.POST)
	public ModelAndView boardSelectDelete(@RequestParam String[] checkSeq
										  ,@RequestParam String pg){
		boardDAO.boardSelectDelete(checkSeq);
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("pg", pg);
		mav.addObject("display", "/board/boardDelete.jsp");
		
		mav.setViewName("/index/index");
		
		return mav;		
	}
	
	@RequestMapping(value="/boardModifyForm.do", method=RequestMethod.GET)
	public ModelAndView boardModifyForm(@RequestParam int seq
									   ,@RequestParam String pg){
		BoardDTO boardDTO = boardDAO.boardView(seq);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("seq", seq);
		mav.addObject("pg", pg);
		mav.addObject("boardDTO", boardDTO);
		mav.addObject("display", "/board/boardModifyForm.jsp");
		
		mav.setViewName("/index/index");
		
		
		return mav;		
	}
	
	
	@RequestMapping(value="/boardModify.do", method=RequestMethod.POST)
	public String boardModify(@RequestParam int pg
						     ,@RequestParam String seq
						     ,@RequestParam String subject
						     ,@RequestParam String content
						     ,ModelMap modelMap){
		Map<String,String> map = new HashMap<String,String>();
		map.put("seq", seq);
		map.put("subject", subject);
		map.put("content", content);
		
		//DB
		boardDAO.boardModify(map);
		
		modelMap.addAttribute("pg", pg);
		modelMap.addAttribute("display", "/board/boardModify.jsp");
				
		return "/index/index";
	}
	//위쪽은 공지사항 관련 컨트롤러
	//=============================================================================
	//
	//
	//=============================================================================
	//아래쪽은 QnA관련 컨트롤러
	@RequestMapping(value="/boardNoticeQna.do", method=RequestMethod.GET) 
	public ModelAndView boardNoticeQna(@RequestParam(required=false) String pg,
										@CookieValue(value="boardSeq",required=false,defaultValue="")String boardSeq,
										HttpServletResponse response,
										HttpSession session){
		Cookie cookie = new Cookie("boardSeq", boardSeq);
		cookie.setMaxAge(0);
		response.addCookie(cookie);
		
		if(pg==null) pg="1";
		
		int endNum = Integer.parseInt(pg) * 5;
		int startNum = endNum-4;
		
		String id = (String) session.getAttribute("memId");
		
		//DB
		List<BoardDTO> list = boardDAO.boardNoticeQna(startNum,endNum,id);		
		
		//페이징처리
		boardQnaPaging.setId(id);
		boardQnaPaging.setCurrentPage(Integer.parseInt(pg));
		boardQnaPaging.setPageBlock(3);
		boardQnaPaging.setPageSize(5);
		boardQnaPaging.makePagingHTML();
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("id", id);
		mav.addObject("pg", pg);
		mav.addObject("list", list);
		mav.addObject("boardQnaPaging", boardQnaPaging);
		mav.addObject("display", "/board/boardNoticeQna.jsp");
		mav.setViewName("/index/index");
		
		return mav;
	}
	
	@RequestMapping(value="/boardQnaWriteForm.do",method=RequestMethod.GET)
	public ModelAndView boardQnaWriteForm(){
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display", "/board/boardQnaWriteForm.jsp");
		mav.setViewName("/index/index");
		return mav;
	}
	
	@RequestMapping(value="/boardQnaWrite.do", method = RequestMethod.POST)
	public String boardQnaWrite(@RequestParam Map<String,String> map,
							    Model model,
							    HttpSession session){
		String id = (String) session.getAttribute("memId");
		String name =(String) session.getAttribute("memName");
		
		System.out.println(id);
		System.out.println(name);
		
		map.put("id", id);
		map.put("name", name);
		
		//DB
		boardDAO.boardQnaWrite(map);
		model.addAttribute("display", "/board/boardQnaWrite.jsp");
		
		return "/index/index";
	}
	
	@RequestMapping(value="/boardQnaView.do", method=RequestMethod.GET)
	public ModelAndView boardQnaView(@RequestParam int seq,
								     @RequestParam String pg){		
		
		BoardDTO boardDTO = boardDAO.boardQnaView(seq);
			
		ModelAndView mav = new ModelAndView();
		mav.addObject("pg", pg);
		mav.addObject("boardDTO", boardDTO);
		mav.addObject("display", "/board/boardQnaView.jsp");
		mav.setViewName("/index/index");
		return mav;
		}
	
	@RequestMapping(value="/boardModifyQnaForm.do", method=RequestMethod.GET)
	public ModelAndView boardModifyQnaForm(@RequestParam int seq
									      ,@RequestParam String pg){
		BoardDTO boardDTO = boardDAO.boardQnaView(seq);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("seq", seq);
		mav.addObject("pg", pg);
		mav.addObject("boardDTO", boardDTO);
		mav.addObject("display", "/board/boardModifyQnaForm.jsp");
		
		mav.setViewName("/index/index");
		
		
		return mav;		
	}
	
	@RequestMapping(value="/boardQnaModify.do", method=RequestMethod.POST)
	public String boardQnaModify(@RequestParam int pg
				     		,@RequestParam String seq
				     		,@RequestParam String subject
				     		,@RequestParam String content
				     		,ModelMap modelMap){
		Map<String,String> map = new HashMap<String,String>();
		map.put("seq", seq);
		map.put("subject", subject);
		map.put("content", content);
		
		//DB
		boardDAO.boardQnaModify(map);
		
		modelMap.addAttribute("pg", pg);
		modelMap.addAttribute("display", "/board/boardQnaModify.jsp");
		
		return "/index/index";
	}
	
	@RequestMapping(value="/boardDeleteQna.do", method=RequestMethod.GET)
	public String boardDeleteQna(@RequestParam int seq,
								 Model model){
		boardDAO.boardDeleteQna(seq);		
		
		model.addAttribute("display", "/board/boardDeleteQna.jsp");
		
		return "/index/index";
	}
	
	@RequestMapping(value="/boardReplyQnaForm.do", method=RequestMethod.GET)
		public ModelAndView boardReplyQnaForm(@RequestParam String answer,
											  @RequestParam int pseq,
										      @RequestParam int pg,
										      @RequestParam int seq,
										      @RequestParam String category){
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("seq", seq);
		mav.addObject("answer", answer);
		mav.addObject("pseq", pseq);
		mav.addObject("pg", pg);
		mav.addObject("category",category);
		mav.addObject("display", "/board/boardReplyQnaForm.jsp");
		
		mav.setViewName("/index/index");
		
		return mav;	
	}
	
	@RequestMapping(value="/boardReplyQna.do", method=RequestMethod.POST)
	public String boardReplyQna(@RequestParam Map<String, String> map,
							    ModelMap modelMap,
							    HttpSession session){
		//데이터
		String id = (String) session.getAttribute("memId");
		String name = (String) session.getAttribute("memName");
		
		map.put("id", id);
		map.put("name", name);
		
		//DB
		boardDAO.boardReplyQna(map);
		
		modelMap.addAttribute("pg", map.get("pg"));
		modelMap.addAttribute("display", "/board/boardReplyQna.jsp");
		
		return "/index/index";		
	}
	
	@RequestMapping(value="/boardQnaSearch.do", method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView boardQnaSearch(@RequestParam String colName,
									   @RequestParam String value,
									   @RequestParam(required=false) String pg,
									   HttpSession session){
		String id = (String) session.getAttribute("memId");
		System.out.println("idididid="+id);
		
		if(pg==null) pg="1";
		
		int endNum = Integer.parseInt(pg)*5;
		int startNum = endNum-4;
		
		Map<String,String> map = new HashMap<String,String>();
		map.put("colName", colName);
		map.put("value", value);
		map.put("startNum", startNum+"");
		map.put("endNum", endNum+"");
		map.put("id", id);
		
		List<BoardDTO> list = boardDAO.boardQnaSearch(map);
		
		//페이징처리
		boardQnaPaging.setCurrentPage(Integer.parseInt(pg));
		boardQnaPaging.setPageBlock(3);
		boardQnaPaging.setPageSize(5);
		boardQnaPaging.makePagingHTML(map);
				
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("list",list);
		mav.addObject("colName", colName);
		mav.addObject("value", value);
		mav.addObject("boardQnaPaging", boardQnaPaging);
		mav.addObject("display", "/board/boardNoticeQna.jsp");
		
		mav.setViewName("/index/index");
		
		return mav;
	}
}


















