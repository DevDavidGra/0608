<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="./multicheckview/js/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("input:first").click(function() {
			$("input").attr("checked", $(this).prop("checked"));

		});

		var index = [];
		$("button").click(function() {

			$("form").submit();

		})
	});
</script>

</head>
<body>

	<form action="/jspdemo/multi" method="post" name="frm">
		<button type="button">삭제</button>
		<table border="1">
			<thead>
				<tr>
					<th><input type="checkbox" />전체선택</th>
					<th>num</th>
					<th>name</th>
					<th>age</th>
					<th>location</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${res}" var="i">
					<tr>

						<td><input type="checkbox" name="sel" class="sel" value="${i.num}" /></td>
						<td>${i.num}</td>
						<td>${i.name}</td>
						<td>${i.age}</td>
						<td>${i.loc}</td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
	</form>
</body>
</html>