package kr.ac.kopo.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.model.User;

public class UserInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		
		User user = (User) session.getAttribute("member");
		if(user != null) {
			System.out.println("UserInterceptor: TRUE");
			return true;
		}
		
		String query = request.getQueryString();
		session.setAttribute("target_url", request.getRequestURI() + (query != null ? "?" + query : "") );
		System.out.println("INTERCEPTOR: " + session.getAttribute("target_url"));
		
		response.sendRedirect("/login_user");
		
		System.out.println("UserInterceptor: FALSE");
		return false;	
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		
	}
}
