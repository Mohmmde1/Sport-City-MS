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
<link rel="stylesheet"
	href="<c:url value="/resources/css/manage_facilities.css" />" />
</head>

<form action="update" method="post" onsubmit="submitForm">
	<c:set var="facilitiesList" value="${sessionScope.facilityList}" />
	<c:set var="employeesList" value="${sessionScope.employeesList}" />
	<c:set var="json" value="${sessionScope.json}" />
	<div class="form-group">
		<div class="form-label">
			<label>Facilitiy Type</label>
		</div>
		<select class="dropdown first" name="selectedFacility">
			<option selected>select the faculity</option>
			<c:forEach var="f" items="${facilitiesList }">
				<option value="${f.id}">${f.name}</option>
			</c:forEach>
		</select>
	</div>

	<div class="form-group">
		<div class="form-label">
			<label>Facilitiy Status</label>
		</div>
		<select class="dropdown second " name="status">
			<option selected>...</option>
			<option value="Available">Available</option>
			<option value="Booked">Booked</option>

		</select>
	</div>

	<div class="row">
		<div class="col">

			<div class="form-label">
				<label>Person in Charge</label>
			</div>
			<select class="dropdown third" name="selectedEmployee">
				<option selected>...</option>
				<c:forEach var="e" items="${employeesList }">
					<option value="${e.id}">${e.name}</option>
				</c:forEach>
			</select>
		</div>


		<div class="col">
			<div class="form-label">
				<label>Location</label>
			</div>
			<input type="text" name="location" class="dropdown forth">
		</div>

	</div>
	<div class="row">
		<div class="col">

			<div class="form-label">
				<label>Capacity</label>
			</div>
			<div class="date">

				<input type="text" class="fifth" name="capacity">
			</div>
		</div>
		<div class="col">
			<div class="form-label">
				<label>Price</label>
			</div>
			<div class="date">

				<input type="text" class="sixth" name="price">
			</div>
		</div>

	</div>
	<div class="save-button">
		<button type="submit">Save</button>
	</div>

</form>
<script>
	var facilities = JSON.parse('${json}');
	if (facilities) {
		console.log("HI");
		console.log(facilities);

	} else {
		alert("facilityList does not exist in sessionStorage");
	}

	const selectFacility = document.querySelector(".first");
	const selectStatus = document.querySelector(".second");
	const selectPerson = document.querySelector(".third");
	const selectLocation = document.querySelector(".forth");
	const selectCapacity = document.querySelector(".fifth");
	const selectPrice = document.querySelector(".sixth");

	selectFacility.addEventListener("change", function() {
		const selectedFacility = selectFacility.value;
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
