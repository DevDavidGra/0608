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
	<c:set var="color" value="red" />
	<c:choose>
		<c:when test="${color=='red'}">
			<c:out value="ff0000" />
		</c:when>
		<c:when test="${color=='green'}">
			<c:out value="00ff00" />
		</c:when>
		<c:when test="${color=='blue'}">
			<c:out value="0000ff" />
		</c:when>
		<c:otherwise>
			<c:out value="아몰랑" />
		</c:otherwise>
	</c:choose>
</body>
</html>