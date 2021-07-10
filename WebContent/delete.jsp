<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.util.List" %>  
   
<%@ page import = "com.javaex.dao.GuestbookDao" %> 
<%@ page import = "com.javaex.vo.GuestbookVo" %>
    
<%
	request.setCharacterEncoding("UTF-8");
	int no = Integer.parseInt(request.getParameter("no"));
	String password = request.getParameter("password");
	
	System.out.println(no+", "+password);
	
	
	GuestbookVo guestbookVo = new GuestbookVo(no, password);
	
	GuestbookDao guestbookDao = new GuestbookDao();
	guestbookDao.guestbookDelete(guestbookVo);
	
	response.sendRedirect("./addList.jsp");
%>