<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.util.List" %>  
   
<%@ page import = "com.javaex.dao.GuestbookDao" %> 
<%@ page import = "com.javaex.vo.GuestbookVo" %>
    
    
<%
	request.setCharacterEncoding("UTF-8");
	
	//int no = Integer.parseInt(request.getParameter("no"));
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");
	//String regDate = request.getParameter("reg_date");
	//System.out.println(no+", "+name+ ", " + password + ", " + content + ", " + regDate);
	System.out.println(name+ ", " + password + ", " + content);
	
	//GuestbookVo guestbookVo = new GuestbookVo(no, name, password, content, regDate);
	GuestbookVo guestbookVo = new GuestbookVo(name, password, content);
	
	GuestbookDao guestbookDao = new GuestbookDao();
	guestbookDao.guestbookInsert(guestbookVo);
	
	response.sendRedirect("./addList.jsp");