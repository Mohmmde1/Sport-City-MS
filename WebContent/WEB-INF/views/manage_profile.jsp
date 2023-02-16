<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>profile</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous" />
<link href="<c:url value="/resources/css/profile.css" />"
	rel="stylesheet">
</head>
<body>

	<c:set var="user" value="${requestScope.user}" />

	<div class="user-avatar">
		<img src="https://bootdey.com/img/Content/avatar/avatar7.png"
			alt="Maxwell Admin" />
	</div>
	<form action="update" method="post" onsubmit="submitForm()">
		<div class="row">
			<div class="col">
				<label>First Name</label><br /> <input type="text"
					class="form-control" placeholder="First name" name="fname"
					value="<c:out value="${user.fname}" />" />
			</div>
			<div class="col">
				<label>Last Name</label><br /> <input type="text"
					class="form-control" placeholder="Last name" name="lname"
					value="<c:out value="${user.lname}" />" />
			</div>
		</div>

		<div class="row element">
			<label> Birthdate</label>
			<c:if test="${not empty user.dob }">
				<input type="date" class="form-control" placeholder="Date of Birth"
					name="dob" value="<c:out value="${user.dob}" />" />
			</c:if>
			<c:if test="${empty user.dob}">
				<input type="date" class="form-control" placeholder="Date of Birth"
					name="dob" />
			</c:if>

		</div>

		<div class="row element">
			<label> Phone No</label> <input name="phoneNo" type="text"
				placeholder="Phone No" value="<c:out value="${user.phoneNumber}" />" />
		</div>
		<div class="row element">
			<label> Email</label> <input name="email" type="email"
				placeholder="Email Address"
				value="<c:out value="${user.username}" />" />
		</div>
		<div class="row element">
			<input name="id" type="hidden" value="<c:out value="${user.id}" />" />
		</div>
		<div>
			<button type="submit" class="save-button element">Save</button>
		</div>

	</form>
	<script>
		function submitForm() {
			alert("Your Profile has been updated!");
		}
	</script>
</body>
</html>
