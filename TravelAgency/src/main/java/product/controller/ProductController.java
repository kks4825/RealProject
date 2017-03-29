package product.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import member.dao.MemberDAO;
import product.bean.BankDTO;
import product.bean.ProductDTO;
import product.bean.ReviewPaging;
import product.bean.SchedulesDTO;
import product.bean.TravelReviewDTO;
import product.dao.ProductDAO;

@Controller
@Component
public class ProductController {
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private MemberDAO memberDAO;
	@Autowired
	private ReviewPaging reviewPaging;
	
	@RequestMapping(value = "/packageThumbView.do")
	public ModelAndView packageView(@RequestParam String category) {
		ModelAndView mav = new ModelAndView();
		// db
		List<ProductDTO> list = productDAO.packageView(category);

		mav.addObject("list", list);

		mav.addObject("category",category);
		mav.addObject("display", "/product/thumbnail.jsp");
		mav.setViewName("/index/index");

		return mav;
	}

	@RequestMapping(value = "/detailView.do")
	public ModelAndView detailView(@RequestParam int seq, @RequestParam(required = false) String pg) {
		if (pg == null)
			pg = "1";

		// DB
		ProductDTO productDTO = productDAO.detailView(seq);
		List<SchedulesDTO> scheduleList = productDAO.schedules(seq);

		int endNum = Integer.parseInt(pg) * 10;
		int startNum = endNum - 9;

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pack_no", productDTO.getPack_no());
		map.put("startNum", startNum);
		map.put("endNum", endNum);

		List<TravelReviewDTO> reviewList = productDAO.travelReviewList(map);

		// 페이징처리
		reviewPaging.setCurrentPage(Integer.parseInt(pg));
		reviewPaging.setPageBlock(5);
		reviewPaging.setPageSize(10);
		reviewPaging.makePagingHTML(productDTO.getPack_no());

		ModelAndView mav = new ModelAndView();

		mav.addObject("reviewPaging", reviewPaging);
		mav.addObject("reviewList", reviewList);
		mav.addObject("productDTO", productDTO);
		mav.addObject("scheduleList", scheduleList);
		mav.addObject("display", "/product/detailView.jsp");

		mav.setViewName("/index/index");

		return mav;
	}

	@RequestMapping(value = "/payment.do")
	public ModelAndView payment(@RequestParam Map<String, String> map, HttpSession session) {
		// DB
		ModelAndView mav = new ModelAndView();
		String memId = (String) session.getAttribute("memId");
		Map<String, Object> map1 = new HashMap<String, Object>();
		map1.put("memId", memId);
		map1.put("pack_no", Integer.parseInt(map.get("pack_no")));
		boolean isExistPay = memberDAO.reserveCheck(map1);
		if (isExistPay) {
			mav.addObject("display", "/myPage/isExistPayment.jsp");
			mav.setViewName("/index/index");
		} else {
			ProductDTO productDTO = productDAO.paymentPackage(Integer.parseInt(map.get("pack_no")));
			mav.addObject("productDTO", productDTO);
			mav.addObject("adults", map.get("adults"));
			mav.addObject("kids", map.get("kids"));
			mav.addObject("payment", map.get("payment"));
			mav.addObject("display", "/product/3_1/payment.jsp");
			mav.setViewName("/index/index");
		}
		return mav;
	}

	@RequestMapping(value = "/searchResult.do", method = RequestMethod.GET)
	public ModelAndView seachResult() {
		ModelAndView mav = new ModelAndView();

		List<ProductDTO> list = productDAO.searchResult();

		mav.addObject("list", list);
		mav.addObject("display", "/product/searchResult.jsp");
		mav.setViewName("/index/index");

		return mav;
	}

	@RequestMapping(value = "/package_upload_Form.do", method = RequestMethod.GET)
	public ModelAndView package_upload_Form() {
		ModelAndView mav = new ModelAndView();

		mav.addObject("display", "/product/package_upload.jsp");
		mav.setViewName("/index/index");

		return mav;
	}

	@RequestMapping(value = "/package_upload.do", method = RequestMethod.POST)
	public ModelAndView package_upload(@ModelAttribute ProductDTO productDTO,
			@RequestParam(required = false) MultipartFile[] img,
			@RequestParam(required = false, value = "schedules_content") String[] schedules_content,
			@RequestParam(required = false) int liLength, HttpServletRequest request) {
		String filePath = request.getSession().getServletContext().getRealPath("/") + "/product_img";

		System.out.println(filePath);

		String[] fileName = new String[9];

		for (int i = 0; i < fileName.length; i++) {
			if (fileName[i] != "") {
				fileName[i] = img[i].getOriginalFilename();
				File file = new File(filePath, fileName[i]);

				try {
					FileCopyUtils.copy(img[i].getInputStream(), new FileOutputStream(file));
				} catch (IOException e) {
					e.printStackTrace();
				}
			} else {
				fileName[i] = "";
			}
		}

		productDTO.setImage1(fileName[0]);
		productDTO.setImage2(fileName[1]);
		productDTO.setImage3(fileName[2]);
		productDTO.setImage4(fileName[3]);
		productDTO.setImage5(fileName[4]);
		productDTO.setImage6(fileName[5]);
		productDTO.setImage7(fileName[6]);
		productDTO.setImage8(fileName[7]);
		productDTO.setImage9(fileName[8]);

		// DB
		productDAO.productUpload(productDTO);

		for (int i = 0; i < liLength; i++) {
			productDAO.scheduleUpload(schedules_content[i], i + 1 + "일차");
		}

		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/product/package_upload_complete.jsp");
		mav.setViewName("/index/index");

		return mav;
	}

	@RequestMapping(value = "/paymentChecking.do")
	public ModelAndView paymentComplete(@RequestParam Map<String, String> map) {
		ModelAndView mav = new ModelAndView();
		if (map.get("paymethod").equals("account_depo")) {
			BankDTO bankDTO = productDAO.bankAccount(map.get("bank"));
			mav.addObject("pack_no", map.get("pack_no"));
			mav.addObject("totalPay", map.get("totalPay"));
			mav.addObject("adults", map.get("adults"));
			mav.addObject("kids", map.get("kids"));
			mav.addObject("bankDTO", bankDTO);
			mav.addObject("display", "/product/bankingPayment.jsp");
		} else if (map.get("paymethod").equals("credit_card")) {
			mav.addObject("pack_no", map.get("pack_no"));
			mav.addObject("card", map.get("card"));
			mav.addObject("monthly", map.get("monthly"));
			mav.addObject("totalPay", map.get("totalPay"));
			mav.addObject("adults", map.get("adults"));
			mav.addObject("kids", map.get("kids"));
			mav.addObject("display", "/product/creditCardPayment.jsp");
		}
		mav.setViewName("/index/index");

		return mav;
	}

	@RequestMapping(value = "/purchaseComplete.do")
	public ModelAndView purchaseComplete(@RequestParam Map<String, String> map, HttpSession session) {
		String memId = (String) session.getAttribute("memId");
		map.put("memId", memId);
		map.put("numOfPerson", "성인:"+map.get("adults")+"명"+",<br>아동:"+map.get("kids")+"명");
		memberDAO.reserveAdd(map);

		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/product/purchaseComplete.jsp");
		mav.setViewName("/index/index");
		return mav;
	}
}
