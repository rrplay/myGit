<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	hello my world
	<%--<<<<<<< HEAD --%>
	<%
		SimpleDateFormat sdf = new SimpleDateFormat(
				"yyyy년 MM월 dd일 hh시 mm분 ss초 sss");
	%><br> isNew :
	<%=session.isNew()%><br> 생성시간:
	<%=sdf.format(new Date(session.getCreationTime()))%><br> 최종접속시간:
	<%=sdf.format(new Date(session.getLastAccessedTime()))%><br>
	<%-- >>>>>>> refs/heads/firstBranch--%>


	<form action="/gitJspTest/outputJsp.jsp" method="post">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td><input type="text" name="myId"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="myName"></td>
			</tr>
			<tr>
				<td>E-mail</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td><input type="submit" value="입력"></td>
			</tr>
		</table>
		<%--======= --%>
		<br>



	</form>
</body>
</html>
