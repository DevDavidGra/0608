<%@page import="servletdemo.part03.TestDTO"%>
<%@page import="java.util.List"%>
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
		List<TestDTO> dto = (List<TestDTO>)request.getAttribute("aList");
	%>

	<table>
		<thead>
			<tr>
				<th>Employees_id</th>
				<th>First_name</th>
				<th>salary</th>
			</tr>
		</thead>
		
		<tbody>
		<%
			for(TestDTO i : dto){
		%> 
			<tr>
				<td><%=i.getEmployee_id() %></td>
				<td><%=i.getFirst_name() %></td>
				<td><%=i.getSalary() %></td>
			</tr>
		<%
			} 
		%>
		</tbody>
	</table>
</body>
</html>