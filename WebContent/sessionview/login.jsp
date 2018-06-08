<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	if(${!empty requestScope.chk}){
		//사용시 더블 쿼트 지우고 쓸것..
		alert("잘못쳣자나..");
		$("#fid").val('${requestScope.chk}');
		
	}
});
</script>

</head>
<body>
	<c:choose>
		<c:when test="${empty sessionScope.chk}">
			<div class="login">
				<form action="login" method="post">
					<table>
						<tr>
							<td><label for="fid">아이디</label></td>
							<td><input type="text" name="fid" id="fid" required></td>
						</tr>
						<tr>
							<td><label for="fpass">비밀번호</label></td>
							<td><input type="password" name="fpass" id="fpass" required></td>
						</tr>
						<tr>
							<td colspan="2" align="center"><input type="submit"
								value="로그인"> <input type="reset" value="취&nbsp;&nbsp;소"></td>
						</tr>
					</table>
				</form>
			</div>
		</c:when>
		
		<c:otherwise>
			<div class="logout">
				<p>${sessionScope.chk}님 방가방가</p>
				<a href="logout">로그아웃</a>
			</div>
		</c:otherwise>
	</c:choose>

</body>
</html>