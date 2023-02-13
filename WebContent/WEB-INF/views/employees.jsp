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
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"
	integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"
	integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ"
	crossorigin="anonymous"></script>
<style type="text/css">
.col-form-label {
	text-align: left;
}
</style>

<title>SportsCorner | Manage Events</title>
</head>
<body>
	<div class="container text-center">
		<h1>Employees</h1>

		<div class="container d-flex flex-row-reverse">
			<button type="button" class="btn btn-success" data-toggle="modal"
				data-target="#exampleModal" data-whatever="@mdo">New
				Employee</button>
		</div>

		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Add New
							Employee</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<form action="add" method="POST">
						<div class="modal-body">
							<div class="form-group">
								<label for="name" class="col-form-label">Employee Name:</label>
								<input type="text" name="name" class="form-control" id="name" required>
							</div>
							<div class="form-group">
								<label for="email" class="col-form-label">Email:</label>
								<input type="email" name="email" class="form-control" id="email" required>
							</div>
							<div class="form-group">
								<label for="dob" class="col-form-label">Date of Birth:</label>
								<input type="date" name="dob" class="form-control" id="dob" required>
							</div>							
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Cancel</button>
							<input type="submit" class="btn btn-success" value="Add">
						</div>
					</form>
				</div>
			</div>
		</div>

		<br>
		<table class="table table-bordered table-striped text-center">
			<thead class="table-dark">
				<tr>
					<th scope="col">Employee ID</th>
					<th scope="col">Employee Name</th>
					<th scope="col">Birth Date</th>
					<th scope="col">E-mail</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="e" items="${employeesList }" varStatus="loop">
					<tr>
						<th scope="row">${e.id }</th>
						<td>${e.name }</td>
						<td>${e.birth_date }</td>
						<td>${e.email }</td>
						<td>
							<form action="delete" method="POST">
								<input name="id" type="hidden" value="${e.id }"> <input
									class="btn btn-outline-danger" type="submit" value="Layoff" />
							</form>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>