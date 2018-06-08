<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>폼이 있어야 폼나나?</title>

</head>
<body>
	<form action="problem" method="post">
		<p>1. 대한민국 수도는 어디임니까? </p>
		<p>
			<input type="radio" name="ko" value="부산" id="busan" checked />
			<label for="busan">부산</label>
			<input type="radio" name="ko" value="제주" id="jeju" />
			<label for="jeju">제주</label>
			<input type="radio" name="ko" value="서울" id="seoul" />
			<label for="seoul">서울</label>
			<input type="radio" name="ko" value="대전" id="deajeon" />
			<label for="deajeon">대전</label>
		</p>
		<input type="submit" value="commit" />
	</form>
</body>
</html>