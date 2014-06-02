<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<%
			Enumeration<String> e = session.getAttributeNames();
		
			while (e.hasMoreElements()) {
				String eName =  e.nextElement();
				String eVal = (String) session.getAttribute(eName);
		%>
		<tr>
			<td><%=eName%></td>
			<td><%=eVal%></td>
		</tr>

		<%
			}
		%>
	</table>
</body>
</html>