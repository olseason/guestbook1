<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="com.javaex.dao.GuestbookDao"%>
<%@ page import="com.javaex.vo.GuestbookVo"%>

<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String pw = request.getParameter("password");
	String content = request.getParameter("content");
	//vo로 묶기
	GuestbookVo guestBookVo = new GuestbookVo(name,pw,content);
	
	//저장하기
	GuestbookDao guestBookDao = new GuestbookDao();
	guestBookDao.guestbookInsert(guestBookVo);
	//리스트 리다이렉트
	response.sendRedirect("./list.jsp");
	
%>