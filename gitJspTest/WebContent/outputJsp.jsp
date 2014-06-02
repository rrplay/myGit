<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= request.getCharacterEncoding()%><br>
<%request.setCharacterEncoding("UTF-8"); %>
<%= request.getCharacterEncoding()%><br>
	<%=request.getParameter("myId")%><br>
	<%=request.getParameter("myName")%><br>
	<%=request.getParameter("email")%><br>
	<%
		session.setAttribute("myId", request.getParameter("myId"));
		session.setAttribute("myName", request.getParameter("myName"));
		session.setAttribute("email", request.getParameter("email"));
	%>

	<a href="/gitJspTest/sessionTest.jsp">세션 넘기기</a>
</body>
</html>