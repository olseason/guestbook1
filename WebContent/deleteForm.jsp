<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
//no값 추출
int guestNo = Integer.parseInt(request.getParameter("no"));
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="delete.jsp?no=<%=guestNo %>" method="post">
<p>비밀번호<input type="password" name="ipw" value=""><button type="submit">확인</button></p>
</form>
<p><a href="./list.jsp">메인으로 돌아가기</a></p>

</body>
</html>