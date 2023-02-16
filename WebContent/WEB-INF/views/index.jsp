<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SportsCorner</title>
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
<link rel="stylesheet" href="<c:url value="/resources/css/main.css" />">
</head>

<body id="landing-bg">
	<div class="container-fluid main">

		<nav class="navbar navbar-expand-lg navbar-light bg-transparent">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">
					<p>
						<img src='<c:url value="/resources/images/logo.png" />'
							alt="sportscorner-logo"> <span
							class="fw-bold fs-2 mx-2 text-white"> Sportscorner </span>
					</p>
				</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
					aria-controls="navbarNavAltMarkup" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>





				<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
					<div class="navbar-nav">
						<c:if test="${not empty sessionScope.admin}">
							<!-- Show admin content here -->
							<a class="text-white nav-link" href="facility/">Facilities</a>
							<a class="text-white nav-link" href="profile/">Profile</a>
							<a class="text-white nav-link" href="events/manage">Events</a>
							<a class="text-white nav-link" href="equipments/manage">Equipment</a>
							<a class="text-white nav-link" href="report">Report</a>
							<a class="text-white nav-link" href="employees/manage">Recruit</a>
							<a class="text-white nav-link" href="booking/history">Booking</a>
							<a class="text-white nav-link" href="login">Log out</a>
							
						</c:if>
						<c:if test="${empty sessionScope.admin}">
							<a class="text-white nav-link" href="profile/">Profile</a>
							<a class="text-white nav-link" href="booking/history">Booking</a>
							<a class="text-white nav-link" href="login">Log out</a>
						</c:if>
					</div>
				</div>


			</div>
		</nav>


		<c:if test="${empty sessionScope.user }">
			<div id="join-container"
				class="container d-flex justify-content-center ">
				<a href="register" class="btn btn-success"> Join Now </a>
			</div>
		</c:if>

	</div>
	<!-- Js bundle -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>

</html>