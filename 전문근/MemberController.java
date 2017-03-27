package member.controller;

import java.util.ArrayList;
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
import member.bean.ReserveListDTO;
import member.bean.ZipcodeDTO;
import member.dao.MemberDAO;
import product.bean.ProductDTO;
import product.dao.ProductDAO;

@Controller
@Component
public class MemberController {
	@Autowired
	private MemberDAO memberDAO;
	@Autowired
	private ProductDAO productDAO;

	// 회원가입시작
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
	public ModelAndView login(@RequestParam(required=false) String id,
							  @RequestParam(required=false) String pwd,
							  HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		MemberDTO memberDTO = null;
		
		if(id != null && pwd != null){
			memberDTO = memberDAO.login(id, pwd);
		} else if(session.getAttribute("facebookUserData") != null) {
			mav.addObject("display", "/member/login.jsp");
		}

		if (memberDTO != null) {
			session.setAttribute("memName", memberDTO.getMemName());
			session.setAttribute("memId", memberDTO.getMemId());
			session.setAttribute("memberDTO", memberDTO);

			session.setMaxInactiveInterval(60 * 30);

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

	// 마이페이지 시작
	// 예약확인
	@RequestMapping(value = "/myPage1.do")
	public ModelAndView myPage1(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String memId = (String) session.getAttribute("memId");
		
		List<ReserveListDTO> reserveList = memberDAO.reserveList(memId);
		//reserveList에서 가져온 Pack_no대로 productDTO의 목록을 가져와서 list에 저장하고, mav로 보내줘야함.
		ProductDTO productDTO = null;
		ArrayList<ProductDTO> productList = new ArrayList<ProductDTO>();
		
		for(int i=0;i<reserveList.size();i++){
			productDTO = productDAO.detailView(reserveList.get(i).getPack_no());
			productList.add(productDTO);
		}

		mav.addObject("reserveList",reserveList);
		mav.addObject("productList", productList);
		mav.addObject("display", "/myPage/myPage1.jsp");
		mav.setViewName("/index/index");

		return mav;
	}
	
	// 예약취소
	@RequestMapping(value = "/reserveCancel.do", method = RequestMethod.GET)
	public ModelAndView reserveCancel(@RequestParam int seq){
		ModelAndView mav = new ModelAndView();
		memberDAO.reserveCancel(seq);
		mav.addObject("display", "/myPage/reserveCancel.jsp");
		mav.setViewName("/index/index");
		return mav;
	}

	// 여권,비자 정보창
	@RequestMapping(value = "/myPassport.do")
	public ModelAndView myPassport_visa(HttpSession session) {
		String memId = (String) session.getAttribute("memId");
		
		MemberDTO memberDTO = memberDAO.getPassport_visa(memId);

		ModelAndView mav = new ModelAndView();

		mav.addObject("memberDTO", memberDTO);
		mav.addObject("display", "/myPage/myPassport.jsp");
		mav.setViewName("/index/index");

		return mav;
	}

	// 여권정보입력
	@RequestMapping(value = "/passport_information.do", method = RequestMethod.POST)
	public ModelAndView passport_information(@ModelAttribute MemberDTO memberDTO, HttpSession session) {
		System.out.println(memberDTO.getPassportNumber());
		System.out.println(memberDTO.getFirstName());
		System.out.println(memberDTO.getLastName());
		System.out.println(memberDTO.getPassportStartYear());
		System.out.println(memberDTO.getPassportStartMonth());
		System.out.println(memberDTO.getPassportStartDay());
		
		memberDTO.setMemId((String) session.getAttribute("memId"));

		memberDAO.passport(memberDTO);

		session.setAttribute("memberDTO", memberDTO);
		session.setMaxInactiveInterval(60 * 30);

		ModelAndView mav = new ModelAndView();

		mav.addObject("display", "/myPage/passportUpdateOk.jsp");
		mav.setViewName("/index/index");

		return mav;
	}

	// 기본정보 & 변경
	@RequestMapping(value = "/myBasicInfo.do", method = RequestMethod.GET)
	public ModelAndView myBasicInfo(HttpSession session) {
		ModelAndView mav = new ModelAndView();

		mav.addObject("memberDTO", session.getAttribute("memberDTO"));
		mav.addObject("display", "/myPage/myBasicInfo.jsp");
		mav.setViewName("/index/index");

		return mav;
	}

	@RequestMapping(value = "/myBasicInfoConfirm.do", method = RequestMethod.POST)
	public String myBasicInfoConfirm(@ModelAttribute MemberDTO memberDTO, Model model, HttpSession session) {
		int su = memberDAO.myBasicInfoConfirm(memberDTO);

		session.setAttribute("memberDTO", memberDTO);
		session.setMaxInactiveInterval(60 * 30);

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

	// 장바구니
	@RequestMapping(value = "/payCheck.do")
	public ModelAndView myBasket() {
		String state = "결제대기(계좌입금)";
		List<ReserveListDTO> reserveList_unPaid = memberDAO.reserveList_unPaid(state);
		//product값
		ProductDTO productDTO = null;
		ArrayList<ProductDTO> productList = new ArrayList<ProductDTO>();
		
		for(int i=0;i<reserveList_unPaid.size();i++){
			productDTO = productDAO.detailView(reserveList_unPaid.get(i).getPack_no());
			productList.add(productDTO);
		}
		//member값
		MemberDTO memberDTO = null;
		ArrayList<MemberDTO> memberList = new ArrayList<MemberDTO>();
		
		for(int i=0;i<reserveList_unPaid.size();i++){
			memberDTO = memberDAO.getMember(reserveList_unPaid.get(i).getMemId());
			memberList.add(memberDTO);
		}

		ModelAndView mav = new ModelAndView();
		mav.addObject("memberList",memberList);
		mav.addObject("productList", productList);
		mav.addObject("reserveList_unPaid",reserveList_unPaid);
		mav.addObject("display", "/myPage/payCheck.jsp");
		mav.setViewName("/index/index");

		return mav;
	}

	// 상담문의
	@RequestMapping(value = "/myConsultation.do")
	public ModelAndView myConsultation() {
		ModelAndView mav = new ModelAndView();

		mav.addObject("display", "/myPage/myConsultation.jsp");
		mav.setViewName("/index/index");

		return mav;
	}

	// 이용후기
	@RequestMapping(value = "/myReview.do")
	public ModelAndView myReview() {
		ModelAndView mav = new ModelAndView();

		mav.addObject("display", "/myPage/myReview.jsp");
		mav.setViewName("/index/index");

		return mav;
	}

	// 비밀번호입력
	@RequestMapping(value = "/myPageInputPwd.do")
	public ModelAndView myPageInputPwd(@RequestParam String pg, HttpSession session) {
		ModelAndView mav = new ModelAndView();

		session.setAttribute("pg", pg);

		mav.addObject("display", "/myPage/myPageInputPwd.jsp");
		mav.setViewName("/index/index");

		return mav;
	}

	//비밀번호 체크
	@RequestMapping(value = "/pwdCheck.do", method = RequestMethod.POST)
	public ModelAndView pwdCheck(@RequestParam String id, @RequestParam String pwd, HttpSession session) {
		ModelAndView mav = new ModelAndView();

		String checkId = memberDAO.pwdCheck(id, pwd);

		String pg = (String) session.getAttribute("pg");

		if (id.equals(checkId)) {
			if (pg.equals("myBasicInfo"))
				mav.addObject("pg", "myBasicInfo");
			else if (pg.equals("myPwdChange"))
				mav.addObject("pg", "myPwdChange");
			else if (pg.equals("myPassport"))
				mav.addObject("pg", "myPassport");
			else
				mav.addObject("pg", "memberLeave");
			
			mav.addObject("display", "/myPage/pwdCheckAfter.jsp");
		} else {
			mav.addObject("display", "/myPage/pwdCheckFail.jsp");
		}

		mav.setViewName("/index/index");

		return mav;
	}
	
	//비밀번호변경 화면
	@RequestMapping(value="/myPwdChange.do")
	public ModelAndView myPwdChange(){
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display", "/myPage/myPwdChange.jsp");
		
		mav.setViewName("/index/index");
		
		return mav;
	}
	
	//비밀번호변경 성공
	@RequestMapping(value = "/pwdChange.do")
	public ModelAndView pwdChange(@RequestParam String newPwd, HttpSession session) {
		ModelAndView mav = new ModelAndView();

		String memId = (String) session.getAttribute("memId");

		memberDAO.pwdChange(memId, newPwd);

		mav.addObject("display", "/myPage/pwdChangeConfirm.jsp");

		mav.setViewName("/index/index");

		return mav;
	}
	
	//회원탈퇴폼
	@RequestMapping(value="/memberLeave.do")
	public ModelAndView memberLeave() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("display", "/myPage/memberLeave.jsp");
		
		mav.setViewName("/index/index");
		
		return mav;
	}
	
	//회원탈퇴완료
	@RequestMapping(value = "/leaveSuccess.do")
	public ModelAndView leaveSuccess(HttpSession session, @RequestParam String reason,
			@RequestParam String requirement) {
		ModelAndView mav = new ModelAndView();

		String memId = (String) session.getAttribute("memId");

		Map<String, String> map = new HashMap<String, String>();
		map.put("memId", memId);
		map.put("reason", reason);
		map.put("requirement", requirement);

		memberDAO.leaveSuccess(map);

		mav.addObject("display", "/myPage/leaveSuccess.jsp");
		
		mav.setViewName("/index/index");

		session.invalidate();

		return mav;
	}
}
