package member.bean;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import member.bean.UserDetailsVO;
import member.dao.MemberDAO;

@Transactional
@Component
public class UserAuthenticationService implements UserDetailsService {
  
private static final Logger logger = LoggerFactory.getLogger(UserAuthenticationService.class);
	@Autowired
	private MemberDAO memberDAO;
  
	public UserAuthenticationService() {
	}
  
	public UserAuthenticationService(SqlSessionTemplate sqlSession) {
	}

	public UserDetails loadUserByUsername(String memId)throws UsernameNotFoundException {
		Map<String, Object> user = memberDAO.selectUser(memId);
		if(user == null )throw new UsernameNotFoundException(memId);
		logger.info(user.toString());
		List<GrantedAuthority> gas = new ArrayList<GrantedAuthority>();
		gas.add(new SimpleGrantedAuthority(user.get("AUTHORITY").toString()));
		return new UserDetailsVO(user.get("MEMID").toString(), user.get("MEMPWD").toString(), true, true, true, true, gas,user.get("MEMID").toString());
	}
}