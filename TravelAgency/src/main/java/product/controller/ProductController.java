package product.controller;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@Component
public class ProductController {
	@RequestMapping(value="/packageView.do")
	public ModelAndView packageView() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/product/packageView.jsp");
		mav.setViewName("/main/index");
		
		return mav;
	}
	
	@RequestMapping(value="/detailView.do")
	public ModelAndView detailView() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/product/detailView.jsp");
		mav.setViewName("/main/index");
		
		return mav;
	}
}
