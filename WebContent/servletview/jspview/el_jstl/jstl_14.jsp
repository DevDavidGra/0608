<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<c:set var="num1" value="10000" />
	<c:set var="num2" value="0.2" />
	<fmt:formatNumber value="${num1}" type="currency" currencySymbol="$" />
	<fmt:formatNumber value="${num2}" type="percent" />
	
</body>
</html>