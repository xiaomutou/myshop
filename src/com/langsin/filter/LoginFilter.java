package com.langsin.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.langsin.model.User;

public class LoginFilter implements Filter {

	public void destroy() {
	}

	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) resp;
		String uri = request.getRequestURI();
		String tag = request.getParameter("tag");
		if(uri.endsWith("login.jsp") || "login".equals(tag) || "indexpage".equals(tag)){
			chain.doFilter(request, response);
		}else{
			HttpSession session = request.getSession();
			User user = (User) session.getAttribute("user");
			if(user == null){
				response.sendRedirect("login.jsp");
			}else{
				chain.doFilter(request, response);
			}
		}
		
		
		
		
		
		
		
	}

	public void init(FilterConfig filterConfig) throws ServletException {
	}

}
