<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<%
		int num[] = { 10, 20, 30, 40, 50 };
	%>
	<c:forEach items="<%=num%>" var="i">
		<c:out value="${i}" />
	</c:forEach>
	<hr />

	<c:forEach items="<%=new int[] { 10, 20, 30, 40, 50 }%>" var="e" varStatus="status">
		<p>
			<span> count: ${status.count} </span>
			<span>[${status.index}]</span>
			<c:out value="${e}" />

		</p>
	</c:forEach>
</body>
</html>