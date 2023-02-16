<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous" />
<title>Facilities</title>
</head>

<body>
	<style>
.select-with-image {
	background-image: url('<c:url value="/resources/images/arrow.png" />');
	background-repeat: no-repeat;
	background-position: right center;
	background-size: 40px 30px;
}
</style>
	<c:set var="facilitiesList" value="${sessionScope.facilityList}" />
	<c:set var="employeesList" value="${sessionScope.employeesList}" />
	<c:set var="json" value="${sessionScope.json}" />
	<div class="container-fluid m-3 mb-5">
		<div class="row align-items-center">
			<div class="col-auto">
				<img src='<c:url value="/resources/images/logo.png" />' alt="Logo" class="log-img" />
			</div>
			<div class="col-auto">
				<div class="logo-text">Sportscorner</div>
			</div>
		</div>
	</div>

	<div class="container-fluid m-2">
		<form class="g-3" action="update" method="post"
			onsubmit="submitForm()">
			<div class="row mb-3">
				<div class="col-md-6">
					<label for="FacilityType" class="form-label fw-bold fs-5">Facility
						Type</label> <select
						class="form-select select-with-image border-dark border-3"
						id="facility-type" name="selectedFacility">
						<option selected>select the faculity</option>
						<c:forEach var="f" items="${facilitiesList }">
							<option value="${f.id}">${f.name}</option>
						</c:forEach>
					</select>
				</div>
			</div>
			<div class="row mb-2">
				<div class="col-md-6">
					<label for="Facility Status" class="form-label fw-bold fs-5">Facility
						Status</label> <select
						class="form-select select-with-image border-dark border-3"
						id="facility-status" name="status">
						<option selected>...</option>
						<option value="Available">Available</option>
						<option value="Booked">Booked</option>
						<option value="Under Maintenance">Under Maintenance</option>
					</select>
				</div>
			</div>

			<div class="row">
				<div class="col-3">
					<label for="person-in-charge" class="form-label fw-bold fs-5">Person
						in charge</label> <select type="text"
						class="form-select border-dark border-3 select-with-image"
						id="person-in-charge" placeholder="" name="selectedEmployee">
						<option selected>...</option>
						<c:forEach var="e" items="${employeesList }">
							<option value="${e.id}">${e.name}</option>
						</c:forEach>
					</select>
				</div>
				<div class="col-3">
					<label for="location" class="form-label fw-bold fs-5">Location</label>
					<input type="text" class="form-control border-dark border-3"
						id="location" placeholder="" name="location" />
				</div>
			</div>

			<div class="row">
				<div class="col-3">
					<label for="capacity" class="form-label fw-bold fs-5">Capacity</label>
					<input type="text" class="form-control border-dark border-3"
						id="capacity" placeholder="" name="capacity" />
				</div>
				<div class="col-3">
					<label for="price" class="form-label fw-bold fs-5">Price</label> <input
						type="text" class="form-control border-dark border-3" id="price"
						placeholder="" name="price" />
				</div>
			</div>

			<div class="col-6 d-flex justify-content-end mt-5">
				<button type="submit" class="btn btn-secondary w-25" style="background-color: #00C3A0;">Save</button>
			</div>
		</form>
	</div>
</body>
<script>
	var facilities = ${json};
	

	const selectFacility = document.getElementById("facility-type");
	const selectStatus = document.getElementById("facility-status");
	const selectPerson = document.getElementById("person-in-charge");
	const selectLocation = document.getElementById("location");
	const selectCapacity = document.getElementById("capacity");
	const selectPrice = document.getElementById("price");

	selectFacility.addEventListener("change", function() {
		const selectedFacility = selectFacility.selectedIndex-1;
		var facility = facilities[selectedFacility];
		selectStatus.value = facility.status;
		selectPerson.value = facility.person;
		selectLocation.value = facility.location;
		selectCapacity.value = facility.capacity;
		selectPrice.value = facility.price;
	});
	function submitForm() {
		alert("The facility info has been updated!");
	}
</script>
</html>
