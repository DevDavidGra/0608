<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String res = (String) request.getAttribute("res");
	%>

	<%
		if (res.equals("서울")) {
	%>
	<p><%=res%>는(은) 정답입니다.</p>
	<button type="button" onclick="javascript:window.history.go(-1)" >뒤로가기</button>
	<%
		} else {
	%>
	<p><%=res%>는(은) 정답이 아닙니다.</p>
	<button type="button" onclick="javascript:window.history.go(-1)" >뒤로가기</button>

	<%
		}
	%>


</body>
</html>














