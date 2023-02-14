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
		<h1>Manage Events</h1>
		<br>
		<table class="table table-striped text-center">
			<thead class="table-dark">
				<tr>
					<th scope="col">Event</th>
					<th scope="col">From</th>
					<th scope="col">To</th>
					<th scope="col">Discount</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Eid Al-Adha</td>
					<td>11/03/2022</td>
					<td>20/03/2022</td>
					<td>15%</td>
					<td>
						<button class="btn btn-outline-dark">Action</button>
					</td>
				</tr>

				<tr>
					<td>World Cup</td>
					<td>10/07/2022</td>
					<td>30/07/2022</td>
					<td>15%</td>
					<td>
						<button class="btn btn-outline-dark">Action</button>
					</td>
				</tr>
				<tr>
					<td>Eid Al-Fitr</td>
					<td>10/06/2022</td>
					<td>30/06/2022</td>
					<td>10%</td>
					<td>
						<button class="btn btn-outline-dark">Action</button>
					</td>
				</tr>
				<tr>
					<td>...</td>
					<td>...</td>
					<td>...</td>
					<td>...</td>
					<td>...</td>
				</tr>
				<tr>
					<td>...</td>
					<td>...</td>
					<td>...</td>
					<td>...</td>
					<td>...</td>
				</tr>
				<tr>
					<td>...</td>
					<td>...</td>
					<td>...</td>
					<td>...</td>
					<td>...</td>
			</tbody>
		</table>
		<div class="container d-flex flex-row-reverse">
			<button class="btn btn-success">New Event</button>
		</div>
	</div>
</body>
</html>