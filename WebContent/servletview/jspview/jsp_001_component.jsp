<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

</style>
<script src="./js/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	
})

</script>

</head>
<body>
<% 
	Calendar cal = Calendar.getInstance();
	
%>
<%--
	request : 클라이언트 정보를 서버에서 받아 처리해주는 객체이다
	response : 서버에서 클라이언트에 응답해주는 객체이다
	session : 클라이언트의 세션정보를 저장한 객체이다
	pageContext :  페이지 실행에 필요한 컨텍스트 정보를 저장한 객체
	out : 응답페이지 전송을 위한 출력스트립 객체
	application : 어플리케이션의 컨텍스트 정보를 저장한 객체
	config :  해당페이지의 서블릿 설정 정보
	page : 해당페이지 서블릿 객체
	exception: 예외처리를 위한 객체
 --%>
 	<form action="jsp_005_process.jsp" method="post" name="frm">
 		<span>name</span>
 		<input type="text" name="fname" />
 		<input type="submit" value="commit" />
 	</form>
 
</body>
</html>