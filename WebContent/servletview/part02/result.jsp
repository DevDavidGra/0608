<%@page import="servletdemo.part02.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<%
	
	MemberDTO dto = (MemberDTO)request.getAttribute("member");

%>
	<p><%=dto.getFid() %></p>
	<p><%=dto.getFpass() %></p>
</body>
</html>