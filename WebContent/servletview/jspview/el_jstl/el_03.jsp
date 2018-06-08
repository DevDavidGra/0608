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
	<%--
	연산자 사용
	1논리타입
	2정수타입
	3실수타입
	4문자열타입
	5널타입
	
	 --%>
	 
	 <c:set var="data" value="10" />
	 <p>${data}</p>
	 <p><c:out value="${data}"></c:out>
	 <c:remove var="data" />
	 <p>data:${data }</p>
</body>
</html>
