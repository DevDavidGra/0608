<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<p>before</p>
		<c:import url="jstl_10.jsp">
			<c:param name="data" value="100" />
		</c:import>		
	<p>after</p>
</body>
</html>