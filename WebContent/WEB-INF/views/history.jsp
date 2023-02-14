<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page import="java.util.List" %>

<%@ page import="com.models.Booking" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<!-- Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;0,600;0,700;1,400&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="css/main.css">
</head>

<body class="bg-white">
	<div class="container-fluid">
		<nav class="navbar navbar-light bg-transparent">
			<div class="container-fluid">
				<div
					class="row d-flex align-items-center justify-content-center w-100">
					<a class="navbar-brand justify-content-start col-5 col me-0"
						href="#">
						<p>
							<img src="images/logo.png" alt="sportscorner-logo"> <span
								class="fw-bold fs-2 mx-2 text-dark"> Sportscorner </span>
						</p>
					</a>
					<div class="col-2 col">
						<h1 class="text-center fs-3">Booking history</h1>
					</div>
					<div class="col-5 col"></div>
				</div>
			</div>
		</nav>

		<div class="container-fluid">
			<table class="table">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col">Facility</th>
						<th scope="col">Equipment</th>
						<th scope="col">Price</th>
						<th scope="col">From</th>
						<th scope="col">To</th>
						<th scope="col">Action</th>
					</tr>
				</thead>
				<tbody>
					<%
					List<Booking> bookingList = (List<Booking>) request.getAttribute("bookingList");
					for (int i = 0; i < bookingList.size(); i++) {
						Booking b = bookingList.get(i);
					%>
					<tr>
						<th scope="row"><%=i + 1%></th>
						<td><%=b.getFacility().getName()%></td>
						<td><%=b.getEquipment().getName()%></td>
						<td>
							<%
							SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
							Date start = sdf.parse(b.getStartDate());
							Date end = sdf.parse(b.getEndDate());
							double difference = (end.getTime() - start.getTime()) / (60 * 60 * 1000);
							double cost = b.getFacility().getPrice() * difference;
							%> <%=cost%>
						</td>
						<td><%=b.getStartDate()%></td>
						<td><%=b.getEndDate()%></td>
						<td>
					         <%
					            if (end.after(new Date())) {
					         %>
					            <button class="btn btn-outline-danger">Cancel</button>
					         <%
					            } else {
					         %>
					            Expired
					         <%
					            }
					         %>
				        </td>
					</tr>
					<%
					}
					%>

				</tbody>
			</table>
			<a href="new" class="btn btn-success col-1"> Book now </a>
		</div>
	</div>

	<!-- Js bundle -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>

</html>