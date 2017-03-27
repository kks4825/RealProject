package member.dao;

import java.util.List;
import java.util.Map;

import member.bean.MemberDTO;
import member.bean.ReserveListDTO;
import member.bean.ZipcodeDTO;

public interface MemberDAO {
	public boolean isExistId(String id);

	public List<ZipcodeDTO> getZipcodeList(Map<String, String> map);

	public int signUp(MemberDTO memberDTO);

	public void passport(MemberDTO memberDTO);

	public void visa(MemberDTO memberDTO);

	public MemberDTO getPassport_visa(String memId);

	public int myBasicInfoConfirm(MemberDTO memberDTO);

	public MemberDTO getMember(String id);

	public MemberDTO login(String id, String pwd);

	public String pwdCheck(String id, String pwd);

	public void pwdChange(String memId, String newPwd);

	public void leaveSuccess(Map<String, String> map);

	public void reserveAdd(Map<String, String> map);

	public List<ReserveListDTO> reserveList(String memId);

	public List<ReserveListDTO> reserveList_unPaid(String state);
	
	public void reserveCancel(int seq);

	public boolean reserveCheck(Map<String, Object> map1);
}
