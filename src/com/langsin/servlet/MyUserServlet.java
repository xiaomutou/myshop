package com.langsin.servlet;


import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.langsin.dao.UserDao;
import com.langsin.model.User;

public class MyUserServlet extends BasicServlet {

	public void login(HttpServletRequest request,HttpServletResponse response) throws IOException{
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println(username);
		UserDao ud = new UserDao();
		User user = ud.getUser(username, password);
		if(user !=null){
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			response.sendRedirect("product?tag=indexpage");
		}else{
			response.sendRedirect("login.jsp");
		}
	}

	@Override
	public void excute(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		
	}
	
}
