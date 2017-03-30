package mail.controller;

import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import mail.service.MailService;
import member.bean.MemberDTO;
import member.dao.MemberDAO;

@Controller
@Component
public class MailController {
	@Autowired
	private MemberDAO memberDAO;
	@Autowired
    private MailService mailService;
	
	//이메일 인증창 및 인증번호 생성
	@RequestMapping(value = "/sendMail/emailChk.do", method = RequestMethod.GET)
	 public ModelAndView emailChk(HttpSession session, @RequestParam String memEmail){
		ModelAndView mav = new ModelAndView();
		int emailExist = (memberDAO.EmailCheck(memEmail));
		System.out.println(emailExist);
		if(emailExist==1){
			mav.addObject("emailExist",emailExist);
			mav.setViewName("/member/emailChk");
		}else{
		    int ran = new Random().nextInt(100000) + 10000; // 10000 ~ 99999
		    String joinCode = String.valueOf(ran);
	        
		    session.setAttribute("joinCode", joinCode);
		    mav.addObject("emailExist",emailExist);
			mav.addObject("memEmail", memEmail);
			mav.setViewName("/member/emailChk");			
		}
		return mav;
	}
    
//    // 회원가입 인증 이메일 전송
//    @RequestMapping(value = "/sendMail/auth.do", method = RequestMethod.GET/*, produces = "application/json"*/)
//    @ResponseBody
    public boolean sendMailAuth(HttpSession session, @RequestParam String email) {
    	String joinCode = (String) session.getAttribute("joinCode");
        String subject = "회원가입 인증 코드 발급 안내 입니다. - OO투어";
       
        StringBuilder sb = new StringBuilder();
        
        sb.append("귀하의 인증 코드는 " + joinCode + " 입니다.");

        return mailService.send(subject, sb.toString(), "zwanrn@gmail.com", email, null);
    }

    // 아이디 찾기 페이지
    @RequestMapping(value = "/idFind.do")
    public ModelAndView idFind(){
    	ModelAndView mav = new ModelAndView();
    	
    	mav.addObject("display", "/member/searchId.jsp");
		mav.setViewName("/index/index");
		
		return mav;
    }
    
    // 아이디 찾기
    @RequestMapping(value = "/sendMail/id.do", method = RequestMethod.POST)
    public ModelAndView sendMailId(HttpSession session, @RequestParam String memEmail) {
    	ModelAndView mav = new ModelAndView();
    	MemberDTO memberDTO = memberDAO.findAccount(memEmail);
           	
    	if (memberDTO != null) {
            String subject = "아이디 찾기 안내 입니다.";
            
            StringBuilder sb = new StringBuilder();
            sb.append("귀하의 아이디는 " + memberDTO.getMemId() + " 입니다.");
            
            mailService.send(subject, sb.toString(), "zwanrn@gmail.com", memEmail, null);
            
            mav.addObject("resultMsg", "귀하의 이메일 주소로 해당 이메일로 가입된 아이디를 발송 하였습니다.");
            mav.addObject("display", "/member/searchIdOk.jsp");
        } else {
        	mav.addObject("resultMsg", "귀하의 이메일로 가입된 아이디가 존재하지 않습니다.");
        	mav.addObject("display", "/member/searchIdFail.jsp");
        }
    	
		mav.setViewName("/index/index");
        
		return mav;
    }
    
    // 비밀번호 찾기 페이지
    @RequestMapping(value = "/pwdFind.do")
    public ModelAndView pwdFind(){
    	ModelAndView mav = new ModelAndView();
    	
    	mav.addObject("display", "/member/searchPwd.jsp");
		mav.setViewName("/index/index");
		
		return mav;
    }
    
    // 비밀번호 찾기
    @RequestMapping(value = "/sendMail/password.do", method = RequestMethod.POST)
    public ModelAndView sendMailPassword(HttpSession session, @RequestParam String memId, @RequestParam String memEmail) {
    	ModelAndView mav = new ModelAndView();
    	MemberDTO memberDTO = memberDAO.findAccount(memEmail);
        
        if (memberDTO != null) {
            if (!memberDTO.getMemId().equals(memId)) {
            	mav.addObject("resultMsg", "입력하신 이메일의 회원정보와 가입된 아이디가 일치하지 않습니다.");
            	mav.addObject("display", "/member/searchPwd.jsp");
        		mav.setViewName("/index/index");
                
        		return mav;
            }

            int ran = new Random().nextInt(100000) + 10000; // 10000 ~ 99999
            String tempPwd = String.valueOf(ran);
            
            memberDAO.updateInfo(memberDTO.getMemId(), tempPwd); // 해당 유저의 DB정보 변경

            String subject = "임시 비밀번호 발급 안내 입니다.";
            
            StringBuilder sb = new StringBuilder();
            sb.append("귀하의 임시 비밀번호는 " + tempPwd + " 입니다.");
            
            mailService.send(subject, sb.toString(), "zwanrn@gmail.com", memEmail, null);
            
            mav.addObject("resultMsg", "귀하의 이메일 주소로 새로운 임시 비밀번호를 발송 하였습니다.");
            mav.addObject("display", "/member/searchPwdOk.jsp");
        } else {
        	mav.addObject("resultMsg", "귀하의 이메일로 가입된 아이디가 존재하지 않습니다.");
        	mav.addObject("display", "/member/searchPwdFail.jsp");
        }
		mav.setViewName("/index/index");
       
		return mav;
    }
}

