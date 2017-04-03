package main.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import product.bean.ProductDTO;
import product.dao.ProductDAO;

@Controller
@Component
public class MainController {
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping(value="/index.do", method=RequestMethod.GET)
	public ModelAndView index() {
		List<ProductDTO> rankList = productDAO.productRank();
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("rankList", rankList);
		mav.addObject("display", "/index/main.jsp");
		
		mav.setViewName("/index/index");
		
		return mav;
	}
}