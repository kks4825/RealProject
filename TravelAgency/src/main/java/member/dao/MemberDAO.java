package member.dao;

import java.util.List;
import java.util.Map;

import member.bean.MemberDTO;
import member.bean.ZipcodeDTO;
import member.bean.ReserveListDTO;

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

	public MemberDTO findAccount(String email);

	public void updateInfo(String memId, String tempPwd);

	public Map<String, Object> selectUser(String memId);

	public List<ReserveListDTO> reserveList(int startNum, int endNum, String memId);
	
	public void payChecked(int list_SEQ);
	
	public int getTotalA(String memId);

	public List<ReserveListDTO> reserveList_unPaid(String state);
	
	public void reserveCancel(int seq);
}
