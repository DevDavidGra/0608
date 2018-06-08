<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Collection framework</title>

</head>
<body>
	<%
		List<Integer> aList = new ArrayList<>();
		aList.add(10);
		aList.add(20);
		aList.add(30);
		aList.add(40);
		aList.add(50);
		request.setAttribute("res", aList);
	%>
	
	<c:forEach items="${requestScope.res}" var="i">
		<p>${i}</p>		
	</c:forEach>
</body>
</html>