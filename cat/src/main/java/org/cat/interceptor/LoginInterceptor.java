package org.cat.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import lombok.extern.java.Log;

@Log
public class LoginInterceptor extends HandlerInterceptorAdapter{

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

		Object obj = modelAndView.getModel().get("member");
		
		if(obj == null) {
			response.sendRedirect("/login?msg=fail");
			return;
		}
		
		log.info("정상적으로 로그인 된 사용자" + obj);
		request.getSession().setAttribute("login", obj);
		
		Boolean remember = (Boolean)modelAndView.getModel().get("remember");

		if(remember) {
			Cookie loginCookie = new Cookie("login", obj.toString());
			loginCookie.setMaxAge(60*6024*7);
			response.addCookie(loginCookie);
		}
		
		
		
		
	}

}
