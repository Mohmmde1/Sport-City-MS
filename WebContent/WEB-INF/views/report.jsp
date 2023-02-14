<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<title>SportsCorner | Report</title>
</head>
<body>
	<br>
	<h1 style="margin-left: 10px;">Feedbacks Report</h1>
	<div class="container text-center">
		<h2>Provided Feedbacks list</h2>
		<br>
		<table class="table table-bordered table-striped text-center">
			<thead class="table-dark">
				<tr>
					<th scope="col">No.</th>
					<th scope="col">Feedback provider Name</th>
					<th scope="col">Feedback provider Email</th>
					<th scope="col">Feedback Message</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="f" items="${feedbacksList }" varStatus="loop">
					<tr>
						<th scope="row">${loop.index + 1 }</th>
						<td>${f.name }</td>
						<td>${f.email }</td>
						<td>&ldquo;${f.message }&rdquo;</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<br>
	</div>
	
	<h1 style="margin-left: 10px;">Report of Active Customers</h1><div class="container text-center">
		<h2>Active Customers list</h2>
		<br>
		<table class="table table-bordered table-striped text-center">
			<thead class="table-dark">
				<tr>
					<th scope="col">Customer ID</th>
					<th scope="col">First Name</th>
					<th scope="col">Last Name</th>
					<th scope="col">Email</th>
					<th scope="col">Phone Number</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="c" items="${customersList }">
					<tr>
						<td>${c.id }</td>
						<td>${c.user.fname }</td>
						<td>${c.user.lname }</td>
						<td>${c.user.username }</td>
						<td>${c.user.phoneNumber }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<br>
	</div>
</body>
</html>