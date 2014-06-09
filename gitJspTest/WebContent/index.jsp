<%@page import="sun.security.krb5.internal.ccache.CCacheInputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	welcome file
	<br>cookie maker
	<%
	Cookie c = new Cookie("myVal", "replay");
	c.setMaxAge(600);
	response.addCookie(c);
%>
	<br>
	<%=c.getName()%>
	:
	<%=c.getValue()%>

</body>
</html>