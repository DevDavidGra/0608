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
		<legend>개빵식</legend>
		<form action="namePro" name="frm" method="get">
			<span>name : </span>
			<input type="text" name="fname" maxlength=10 minlength=4 required />
			<input type="submit" value="commit" />
		</form>
	</fieldset>
	<fieldset>
		<legend>포스트빵식</legend>
		<form action="namePro" name="frm" method="post">
			<span>name : </span>
			<input type="text" name="fname" maxlength=10 minlength=4 required />
			<input type="submit" value="commit" />
			
		</form>
	</fieldset>
</body>
</html>