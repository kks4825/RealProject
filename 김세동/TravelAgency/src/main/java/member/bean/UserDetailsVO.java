package member.bean;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.SpringSecurityCoreVersion;
import org.springframework.security.core.userdetails.User;
  
public class UserDetailsVO extends User{
	private static final long serialVersionUID = SpringSecurityCoreVersion.SERIAL_VERSION_UID;
  
	private String memId;
  
	public UserDetailsVO(String username, String password, boolean enabled,
							boolean accountNonExpired, boolean credentialsNonExpired,
							boolean accountNonLocked,
							Collection<? extends GrantedAuthority> authorities,String memId) {
		super(username, password, enabled, accountNonExpired, credentialsNonExpired,accountNonLocked, authorities);
		this.memId = memId; 
	}
  
	public String getMemId() {
		return memId;
	}
  
	public void setMemId(String memId) {
		this.memId = memId;
	}
  
	@Override
	public String toString() {
		return super.toString() + "; MemId: "+this.memId;
	}
  
}