package member.bean;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
  
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;
  
public class UserDeniedHandler implements AccessDeniedHandler{
  
	private static final Logger logger = LoggerFactory.getLogger(UserDeniedHandler.class);
	  
	public void handle(HttpServletRequest req, HttpServletResponse res, AccessDeniedException ade) throws IOException, ServletException {
		req.getRequestDispatcher("/index.do").forward(req, res);
	}
  
}