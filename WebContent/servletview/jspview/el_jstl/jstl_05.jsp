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
	<c:set var="data" value="a" />
	<c:choose>
		<c:when test="${data>='A' && data<='Z'}">
			<c:out value="대문자" />
		</c:when>
		<c:when test="${data>='a' && data<='z'}">
			<c:out value="소문자" />
		</c:when>
		<c:when test="${data>='0' && data<='9'}">
			<c:out value="숫자" />
		</c:when>
		<c:otherwise>
			<c:out value="특수문자" />
		</c:otherwise>
	</c:choose>
</body>
</html>