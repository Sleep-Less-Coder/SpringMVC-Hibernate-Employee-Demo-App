<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC Form Handling</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/styles.css">
	<style>
		.error {
		color: red
		}
	</style>
</head>
<body>
	<div class="container main-container">
		<a href="index.html" class="home-link">Go Home</a>
		<h2 class="title">Add Employee Data</h2>
		<br />
		<form:form method="POST" action="save.html" class="add-employee-from">
			<div class="form-group">
				<form:label path="id">Employee ID:</form:label>
				<form:input path="id" value="${employee.id}" readonly="true"
					class="form-control" />
			</div>

			<div class="form-group">
				<form:label path="name">Employee Name:</form:label>
				<form:input path="name" value="${employee.name}"
					class="form-control" />
					<form:errors path="name" cssClass="error"></form:errors>
			</div>

			<div class="form-group">
				<form:label path="age">Employee Age:</form:label>
				<form:input path="age" value="${employee.age}" class="form-control" />
				<form:errors path="age" cssClass="error"></form:errors>
			</div>

			<div class="form-group">
				<form:label path="salary">Employee Salary:</form:label>
				<form:input path="salary" value="${employee.salary}"
					class="form-control" />
					<form:errors path="salary" cssClass="error"></form:errors>
			</div>

			<div class="form-group">
				<form:label path="address">Employee Address:</form:label>
				<form:input path="address" value="${employee.address}"
					class="form-control" />
					<form:errors path="address" cssClass="error"></form:errors>
			</div>
			<input type="submit" value="Submit" class="btn btn-primary" />
		</form:form>
		<br /> <br />
		<c:if test="${!empty employees}">
			<h2>List Employees</h2>
			<table align="left" border="1" class="table table-striped">
				<tr>
					<th>Employee ID</th>
					<th>Employee Name</th>
					<th>Employee Age</th>
					<th>Employee Salary</th>
					<th>Employee Address</th>
					<th>Actions on Row</th>
				</tr>

				<c:forEach items="${employees}" var="employee">
					<tr>
						<td><c:out value="${employee.id}" /></td>
						<td><c:out value="${employee.name}" /></td>
						<td><c:out value="${employee.age}" /></td>
						<td><c:out value="${employee.salary}" /></td>
						<td><c:out value="${employee.address}" /></td>
						<td align="center"><a href="edit.html?id=${employee.id}"
							class="btn btn-primary">Edit</a> <a
							href="delete.html?id=${employee.id}" class="btn btn-danger">Delete</a></td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</div>
</body>
</html>