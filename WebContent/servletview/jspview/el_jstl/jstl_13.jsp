<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>try catch</title>

</head>
<body>
	<c:catch var="ex">

	</c:catch>
	<p>${empty ex?"OK":"exception"}</p>
</body>
</html>