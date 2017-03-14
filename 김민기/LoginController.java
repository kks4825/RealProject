package member.controller;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@Component
public class LoginController {
	@RequestMapping(value="/login.do")
	public ModelAndView login(){
		ModelAndView mav = new ModelAndView();
		mav.addObject("display","/member/loginForm.jsp");
		mav.setViewName("/index/index");
		return mav;
	}
}
