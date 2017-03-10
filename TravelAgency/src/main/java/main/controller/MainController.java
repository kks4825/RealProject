package main.controller;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@Component
public class MainController {
	@RequestMapping(value="/main/index.do", method=RequestMethod.GET)
	public ModelAndView index(){
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/index/main.jsp");
		mav.setViewName("/index/index");
		
		return mav;
	}
}
