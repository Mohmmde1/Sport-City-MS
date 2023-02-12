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
<link rel="stylesheet" href="css/main.css">
<title>SportsCorner | Manage Equipments</title>
</head>
<body>
	<div class="container text-center">
		<h1>Manage Equipments</h1>
		<br>
		<table class="table table-striped text-center">
			<thead class="table-dark">
				<tr>
					<th scope="col">#</th>
					<th scope="col">Facility</th>
					<th scope="col">Equipment</th>
					<th scope="col">Status</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="e" items="${equipmentsList }" varStatus="loop">
					<tr>
						<th scope="row">${loop.index + 1 }</th>
						<td>${e.facility.name }</td>
						<td>${e.name }</td>
						<td>${e.status }</td>
						<td>
							<button class="btn btn-outline-dark">Action</button>
						</td>
					</tr>

				</c:forEach>				
			</tbody>
			
		</table>
		<div class="container d-flex flex-row-reverse">
			<form action="add" method="GET">
				<input class="btn btn-success" type="submit" value="New Equipment" />
			</form>
		</div>

	</div>
</body>
</html>