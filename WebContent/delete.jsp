<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>

<%
GuestbookDao guestBookDao = new GuestbookDao();
int guestNo = Integer.parseInt(request.getParameter("no"));
String pw = request.getParameter("ipw");
GuestbookVo guestBookVo = new GuestbookVo(guestNo,pw);
guestBookDao.guestbookDelete(guestBookVo);
response.sendRedirect("./list.jsp");
%>