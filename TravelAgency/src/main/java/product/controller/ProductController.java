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
		mav.setViewName("/index/index");
		
		return mav;
	}
	
	@RequestMapping(value="/detailView.do")
	public ModelAndView detailView() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/product/detailView.jsp");
		mav.setViewName("/index/index");
		
		return mav;
	}
	
	@RequestMapping(value="/reservation.do")
	public ModelAndView reservation() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/product/3_1/reservation_ex.jsp");
		mav.setViewName("/index/index");
		
		return mav;
	}
	
	@RequestMapping(value="/payment.do")
	public ModelAndView payment() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/product/3_1/payment.jsp");
		mav.setViewName("/index/index");
		
		return mav;
	}
}
