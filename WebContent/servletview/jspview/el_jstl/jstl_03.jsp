<%@page import="java.util.Random"%>
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
<%
Random ran = new Random();
int random = ran.nextInt(100);

%>

<c:set var="avg" value="<%=random %>" />
<c:choose>
	<c:when test="${avg>=90}">
		<c:out value="A" />
	</c:when>
	<c:when test="${avg>=80}">
		<c:out value="B" />
	</c:when>
	<c:when test="${avg>=70}">
		<c:out value="C" />
	</c:when>
	<c:when test="${avg>=60}">
		<c:out value="D" />
	</c:when>
	<c:when test="${avg>=50}">
		<c:out value="E" />
	</c:when>	
	<c:otherwise>
		<c:out value="F" />
	</c:otherwise>
</c:choose>


</body>
</html>