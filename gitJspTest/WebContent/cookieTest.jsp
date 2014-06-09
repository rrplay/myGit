<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	String name = "";
	String val = "";
	String cookie = request.getHeader("Cookie");
	if(cookie !=null){
		Cookie cookies[] = request.getCookies();
		for(int i=0;i<cookies.length;i++){
			if(cookies[i].getName().equals("myVal") ){
					name =cookies[i].getName();
					val = cookies[i].getValue();			}
		}
	}
	else{
		name ="null";
		val="null";
	}
	%>
	<%=name %>
	:
	<%=val %>

</body>
</html>