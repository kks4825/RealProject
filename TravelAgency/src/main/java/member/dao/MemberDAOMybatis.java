package member.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import member.bean.MemberDTO;
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

	//바자 정보입력
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
}
