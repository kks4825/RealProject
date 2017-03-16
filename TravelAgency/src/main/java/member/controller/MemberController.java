package member.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import member.bean.MemberDTO;
import member.bean.ZipcodeDTO;
import member.dao.MemberDAO;

@Controller
@Component
public class MemberController {
	@Autowired
	private MemberDAO memberDAO;
	
	//회원가입시작
	@RequestMapping(value = "/joinAgree.do", method = RequestMethod.GET)
	public ModelAndView joinAgree() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/member/joinAgree.jsp");
		mav.setViewName("/index/index");

		return mav;
	}

	@RequestMapping(value = "/memberJoin.do")
	public ModelAndView memberJoin() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/member/memberJoin.jsp");
		mav.setViewName("/index/index");

		return mav;
	}
	
	@RequestMapping(value = "/checkPost.do", method = RequestMethod.GET)
	public String checkPost() {
		return "/member/checkPost";
	}

	@RequestMapping(value = "/checkPost.do", method = RequestMethod.POST)
	public String checkPost(@RequestParam String sido, @RequestParam String sigungu, @RequestParam String roadname,
			Model model) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("sido", sido);
		map.put("sigungu", sigungu);
		map.put("roadname", roadname);

		List<ZipcodeDTO> list = null;
		if (isDataNull(sido, sigungu, roadname)) {
			if (isDataEmpty(sido, sigungu, roadname)) {
				list = memberDAO.getZipcodeList(map);
			}
		}
		model.addAttribute("list", list);
		return "/member/checkPost";
	}
	
	private boolean isDataEmpty(String sido, String sigungu, String roadname) {
		return sido != "" && sigungu != "" && roadname != "";
	}

	private boolean isDataNull(String sido, String sigungu, String roadname) {
		return sido != null && sigungu != null && roadname != null;
	}
	
	@RequestMapping(value = "/signUp.do", method = RequestMethod.POST)
	public String signUp(@ModelAttribute MemberDTO memberDTO, Model model, HttpSession session) {
		int su = memberDAO.signUp(memberDTO);
		
		model.addAttribute("display", "/member/joinConfirm.jsp");
		session.setAttribute("id", memberDTO.getMemId());
			
		return "/index/index";
	}
	
	// 아이디 중복확인
		@RequestMapping(value = "/idCheck", method = RequestMethod.GET)
		public ModelAndView checkId(@RequestParam String memId) {
			// DB
			boolean exist = memberDAO.isExistId(memId);

			ModelAndView mav = new ModelAndView();

			if (exist)
				mav.setViewName("/member/checkIdFail"); // 사용 불가능
			else
				mav.setViewName("/member/checkIdOk"); // 가능

			mav.addObject("memId", memId);

			return mav;
		}

	@RequestMapping(value = "/loginForm.do")
	public ModelAndView loginForm() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/member/loginForm.jsp");
		mav.setViewName("/index/index");
		return mav;
	}

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public ModelAndView login(@RequestParam String id, @RequestParam String pwd, HttpSession session) {
		ModelAndView mav = new ModelAndView();

		MemberDTO memberDTO = memberDAO.login(id, pwd);

		if (memberDTO != null) {
			session.setAttribute("memName", memberDTO.getMemName());
			session.setAttribute("memId", memberDTO.getMemId());
			session.setAttribute("memberDTO", memberDTO);

			session.setMaxInactiveInterval(60 * 10);

			mav.addObject("display", "/member/login.jsp");
		} else {
			mav.addObject("display", "/member/loginFail.jsp");
		}

		mav.setViewName("/index/index");

		return mav;
	}

	@RequestMapping(value = "/logout.do")
	public ModelAndView logout(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/member/logout.jsp");
		mav.setViewName("/index/index");

		session.invalidate();

		return mav;
	}

	

	//마이페이지 시작
	//여권,비자 정보창
	@RequestMapping(value = "/myPassport_visa.do")
	public ModelAndView myPassport_visa(HttpSession session) {
		String memId = (String) session.getAttribute("memId");
		MemberDTO memberDTO = memberDAO.getPassport_visa(memId);
		ModelAndView mav = new ModelAndView();
		mav.addObject("memberDTO", memberDTO);
		mav.addObject("display", "/myPage/myPassport_visa.jsp");
		mav.setViewName("/index/index");

		return mav;
	}

	// 여권정보입력
	@RequestMapping(value = "/passport_information.do", method = RequestMethod.POST)
	public ModelAndView passport_information(@ModelAttribute MemberDTO memberDTO, HttpSession session) {
		memberDTO.setMemId((String) session.getAttribute("memId"));
		memberDAO.passport(memberDTO);
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/myPage/myPassport_visa.jsp");
		mav.setViewName("/index/index");

		return mav;
	}

	@RequestMapping(value = "/visa_information.do", method = RequestMethod.POST)
	public ModelAndView visa_infomation(@ModelAttribute MemberDTO memberDTO, HttpSession session) {
		memberDTO.setMemId((String) session.getAttribute("memId"));
		memberDAO.visa(memberDTO);
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/myPage/myPassport_visa.jsp");
		mav.setViewName("/index/index");

		return mav;
	}

	//기본정보 & 변경
	@RequestMapping(value = "/myBasicInfo.do", method = RequestMethod.GET)
	public ModelAndView myBasicInfo(HttpSession session) {
		String id = (String) session.getAttribute("memId");
		session.setAttribute("memId", id);

		MemberDTO memberDTO = memberDAO.getMember(id);

		// session.setAttribute("memDTO", memberDTO);

		ModelAndView mav = new ModelAndView();
		mav.addObject("memberDTO", memberDTO);
		mav.addObject("display", "/myPage/myBasicInfo.jsp");
		mav.setViewName("/index/index");

		return mav;
	}

	
	@RequestMapping(value = "/myBasicInfoConfirm.do", method = RequestMethod.POST)
	public String modify(@ModelAttribute MemberDTO memberDTO, Model model) {
		System.out.println(memberDTO.getMemMobile01());

		int su = memberDAO.myBasicInfoConfirm(memberDTO);

		model.addAttribute("display", "/myPage/myBasicInfoConfirm.jsp");

		return "/index/index";
	}
	
	
	@RequestMapping(value = "/mypage1AfterInfoChange.do")
	public ModelAndView mypage1AfterInfoChange() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("display", "/myPage/myBasicInfo.jsp");
		mav.setViewName("/index/index");

		return mav;
	}
	
	//장바구니
	@RequestMapping(value="/myBasket.do")
	public ModelAndView myBasket() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display", "/myPage/myBasket.jsp");
		mav.setViewName("/index/index");
		
		return mav;
	}
	
	//상담문의
	@RequestMapping(value="/myConsultation.do")
	public ModelAndView myConsultation() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display", "/myPage/myConsultation.jsp");
		mav.setViewName("/index/index");
		
		return mav;
	}
	
	//이용후기
	@RequestMapping(value="/myReview.do")
	public ModelAndView myReview() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display", "/myPage/myReview.jsp");
		mav.setViewName("/index/index");
		
		return mav;
	}
	
	//비밀번호입력
	@RequestMapping(value="/myPageInputPwd.do")
	public ModelAndView myPageInputPwd(@RequestParam String pg,
									   HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		session.setAttribute("pg", pg);
		
		mav.addObject("display", "/myPage/myPageInputPwd.jsp");
		mav.setViewName("/index/index");
		
		return mav;
	}
	
	//비밀번호 체크
	@RequestMapping(value="/pwdCheck.do", method=RequestMethod.POST)
	public ModelAndView pwdCheck(@RequestParam String id, 
								 @RequestParam String pwd,
								 HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		String checkId = memberDAO.pwdCheck(id, pwd);
		
		String pg = (String)session.getAttribute("pg");
		
		if(id.equals(checkId)) {
			if(pg.equals("myBasicInfo"))
				mav.addObject("display", "/myPage/myBasicInfo.jsp");
			else if(pg.equals("myPwdChange"))
				mav.addObject("display", "/myPage/myPwdChange.jsp");
			else
				mav.addObject("display", "/myPage/myPassport_visa.jsp");
		} else {
			mav.addObject("display", "/myPage/pwdCheckFail.jsp");
		}
		
		mav.setViewName("/index/index");
		
		return mav;
	}
}
