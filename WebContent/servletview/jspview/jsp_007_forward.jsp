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
	String colorName = "blue";
%>
	<jsp:forward page="jsp_007_pager.jsp">
		<jsp:param value="<%=colorName %>" name="color" />
		<jsp:param value="10" name="data" />
	</jsp:forward>
	
</body>
</html>