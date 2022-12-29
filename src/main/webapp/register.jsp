<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="ISO-8859-1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
			integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
		<link rel="stylesheet" href="css/main.css">
		<style>
			td {
				padding-left: 15px;
				padding-right: 15px;
			}

			body,
			html {
				height: 100%;
				margin: 0;
			}

			.bg {
				background-image: url("./images/RegisterBg.png");
				height: 100%;
				background-position: center;
				background-repeat: no-repeat;
				background-size: cover;
			}
		</style>
		<title>SportsCorner | Register</title>
	</head>

	<body class="bg">
		<div class="container d-flex flex-row-reverse ">
			<form action=".jsp">
				<table class="text-white bg-black">
					<tr>
						<th class="text-center" colspan="2">
							<h1>Register Now</h1>
						</th>
					</tr>
					<tr>
						<td colspan="2"><label for="fullname">Full Name</label> <br>
							<input id="fullname" name="fullname" type="text" size="50">
							<br>
						</td>
					</tr>
					<tr>
						<td colspan="2"><label for="email">E-mail</label> <br> <input id="email" name="email"
								type="email" size="50"> <br>
						</td>
					</tr>
					<tr>
						<td colspan="2"><label for="username">Username</label> <br>
							<input id="username" name="username" type="text" size="50">
							<br>
						</td>
					</tr>
					<tr>
						<td><label for="password">Password</label> <br> <input id="password" name="password"
								type="password"> <br> <br>
						</td>
						<td><label for="phoneNo">Phone Number</label> <br> <input id="phoneNo" name="phoneNo"
								type="text"> <br> <br>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<div class="d-grid gap-2">
								<input class="btn btn-success" type="submit" value="Join Now">
								<br>
							</div>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>

	</html>