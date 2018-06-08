<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fieldset>
	<legend>로그인</legend>
	<form action="loginPro" method="post" name="frm">
		<label for="fid">아이디 : </label>
		<input type="text" id="fid" name="fid" required />
		<label for="fpass">비밀번호 : </label>
		<input type="password" id="fpass" name="fpass" required />
		<input type="submit" value="login" />
	</form>
</fieldset>
</body>
</html>