<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Duplicate 0604 scriptlet to jstl</title>

</head>
<body>
	<table>
		<thead>
			<tr>
				<th>Employees_id</th>
				<th>First_name</th>
				<th>salary</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${param.aList}" var="i">
				<tr>
					<td>${i.employee_id}</td>
					<td>${i.first_name}</td>
					<td>${i.salary}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>