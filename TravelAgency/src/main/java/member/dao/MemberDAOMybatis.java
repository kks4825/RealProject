package member.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import member.bean.MemberDTO;
import member.bean.ReserveListDTO;
import member.bean.ZipcodeDTO;

@Component("memberDAO")
@Transactional
public class MemberDAOMybatis implements MemberDAO {
	@Autowired
	private SqlSession sqlSession;
	
	//회원가입
	public int signUp(MemberDTO memberDTO) {
		return sqlSession.insert("memberSQL.signUp",memberDTO);
	}

	//아이디 중복 확인
	public boolean isExistId(String id) {
		boolean exist = false;
		
		MemberDTO memberDTO = sqlSession.selectOne("memberSQL.isExistId",id);
		
		if(memberDTO!=null) exist = true;	//사용 불가능
		
		return exist;
	}

	//우편 리스트
	public List<ZipcodeDTO> getZipcodeList(Map<String, String> map) {
		List<ZipcodeDTO> list = sqlSession.selectList("memberSQL.getZipcodeList", map);
		
		return list;
	}

	//여권 정보입력
	public void passport(MemberDTO memberDTO) {
		sqlSession.update("memberSQL.passport", memberDTO);
	}

	//비자 정보입력
	public void visa(MemberDTO memberDTO) {
		sqlSession.update("memberSQL.visa", memberDTO);
	}

	public MemberDTO getPassport_visa(String memId) {
		MemberDTO memberDTO = sqlSession.selectOne("memberSQL.getPassport_visa", memId);
		return memberDTO;
	}

	public MemberDTO getMember(String id) {
		MemberDTO memberDTO = sqlSession.selectOne("memberSQL.getMember",id);
		
		return memberDTO;
	}

	public int myBasicInfoConfirm(MemberDTO memberDTO) {
		return sqlSession.update("memberSQL.myBasicInfoConfirm", memberDTO);
	}

	public MemberDTO login(String id, String pwd) {
		Map<String,String> map = new HashMap<String,String>();
		map.put("id", id);
		map.put("pwd", pwd);
		
		MemberDTO memberDTO = sqlSession.selectOne("memberSQL.login", map);
		System.out.println(memberDTO);
		
		return memberDTO;
	}

	public String pwdCheck(String id, String pwd) {
		Map<String, String> map = new HashMap<String,String>();
		map.put("id", id);
		map.put("pwd", pwd);
		
		String checkId = sqlSession.selectOne("memberSQL.pwdCheck", map);
		
		return checkId;
	}

	public void pwdChange(String memId, String newPwd) {
		Map<String, String> map = new HashMap<String,String>();
		map.put("memId", memId);
		map.put("newPwd", newPwd);
		
		sqlSession.update("memberSQL.pwdChange", map);
	}

	public void leaveSuccess(Map<String, String> map) {
		sqlSession.delete("memberSQL.leaveSuccess", map);
	}

	public MemberDTO findAccount(String memEmail) {
		MemberDTO memberDTO = sqlSession.selectOne("memberSQL.findAccount",memEmail);
		
		return memberDTO;
	}

	public void updateInfo(String memId, String tempPwd) {
		Map<String, String> map = new HashMap<String,String>();
		map.put("memId", memId);
		map.put("tempPwd", tempPwd);
		
		sqlSession.update("memberSQL.tempPwdChange", map);
		
	}

	public Map<String, Object> selectUser(String memId) {
		Map<String, Object> map = sqlSession.selectOne("memberSQL.selectUser", memId);
		
		return map;
	}
	
	public void reserveAdd(Map<String, String> map) {
		sqlSession.insert("memberSQL.reservePack",map);		
	}
	
	public List<ReserveListDTO> reserveList_unPaid(String state) {
		List<ReserveListDTO> list = sqlSession.selectList("memberSQL.reserveList_unPiad",state);
		return list;
	}
	
	public void payChecked(int list_SEQ) {
		sqlSession.update("memberSQL.payChecked",list_SEQ);
	}
	
	public List<ReserveListDTO> reserveList(int startNum, int endNum, String memId) {
		Map<String,String> map = new HashMap<String,String>();
		map.put("startNum",startNum+"");
		map.put("endNum",endNum+"");
		map.put("memId",memId);
		List<ReserveListDTO> list = sqlSession.selectList("memberSQL.reserveList", map);
		
		return list;
	}
	
	public int getTotalA(String memId) {
		int totalA = sqlSession.selectOne("memberSQL.getTotalA", memId);
		
		return totalA;
	}
	
	public void reserveCancel(int seq) {
		sqlSession.delete("memberSQL.reserveCancel",seq);
	}

	public void reviewWrite(Map<String, String> map) {
		sqlSession.insert("memberSQL.reviewWrite",map);
		
	}
	
}
