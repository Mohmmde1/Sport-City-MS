<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/main.css">
<title>SportsCorner | Manage Events</title>
</head>
<body>
	<div class="container text-center">
	<br>
		<h1>Manage Events</h1>
		<br>
		<table class="table table-striped text-center">
			<thead class="table-dark">
				<tr>
					<th scope="col">Event</th>
					<th scope="col">From</th>
					<th scope="col">To</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="e" items="${eventsList }">
					<tr>
						<td>${e.name }</td>
						<td>${e.startDate }</td>
						<td>${e.endDate }</td>
						<td>
							<form action="delete" method="POST">
								<input name="id" type="hidden" value="${e.id }">
								<input class="btn btn-outline-danger" type="submit" value="End Event" />
							</form>
						</td>
					</tr>

				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>