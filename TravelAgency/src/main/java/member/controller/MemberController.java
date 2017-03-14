package member.controller;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@Component
public class MemberController {
	
	@RequestMapping(value="/joinAgree.do", method=RequestMethod.GET)
	public ModelAndView joinAgree() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/member/joinAgree.jsp");
		mav.setViewName("/index/index");
		
		return mav;
	}
	
	@RequestMapping(value="/memberJoin.do")
	public ModelAndView memberJoin() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/member/memberJoin.jsp");
		mav.setViewName("/index/index");
		
		return mav;
	}
	
	@RequestMapping(value="/joinConfirm.do")
	public ModelAndView joinSuccess() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/member/joinConfirm.jsp");
		mav.setViewName("/index/index");
		
		return mav;
	}
}
