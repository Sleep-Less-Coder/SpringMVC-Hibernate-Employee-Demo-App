<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>All Employees</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/styles.css">
</head>
<body>
	<div class="container main-container">
	<a href="index.html" class="home-link">Go Home</a>
		<h1 class="title">List Employees</h1>
		<br/>
		<h4>
			<a href="add.html" class="links">Add More Employee</a>
		</h4>
		<br/>
		<c:if test="${!empty employees}">
			<table align="left" border="1" class="table table-striped">
				<tr>
					<th>Employee ID</th>
					<th>Employee Name</th>
					<th>Employee Age</th>
					<th>Employee Salary</th>
					<th>Employee Address</th>
				</tr>

				<c:forEach items="${employees}" var="employee">
					<tr>
						<td><c:out value="${employee.id}" /></td>
						<td><c:out value="${employee.name}" /></td>
						<td><c:out value="${employee.age}" /></td>
						<td><c:out value="${employee.salary}" /></td>
						<td><c:out value="${employee.address}" /></td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</div>
</body>
</html>