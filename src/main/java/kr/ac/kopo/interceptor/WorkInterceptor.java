package kr.ac.kopo.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.model.Work;

public class WorkInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		
		Work work = (Work) session.getAttribute("work");
		if(work != null) {
			System.out.println("WorkInterceptor: TRUE");
			return true;
		}
		
		String query = request.getQueryString();
		session.setAttribute("target_url", request.getRequestURI() + (query != null ? "?" + query : "") );
		System.out.println("INTERCEPTOR: " + session.getAttribute("target_url"));
		
		response.sendRedirect("/login_work");
		
		System.out.println("WorkInterceptor: FALSE");
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
