<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<c:url var="da" value="jstl_11.jsp">
		<c:param name="data" value="10" />
		<c:param name="date" value="20" />
		
	</c:url>
	<a href="${da}">jstl call</a>
</body>
</html>