<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>

<%@ page import="com.models.Facility" %>
<%@ page import="com.models.Equipment" %>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <!-- Bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <!-- Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;0,600;0,700;1,400&display=swap"
    rel="stylesheet">
  <link href="<c:url value="/resources/css/main.css" />"
	rel="stylesheet">
</head>

<body class="bg-white">
  <div class="container-fluid">
    <nav class="navbar navbar-light bg-transparent">
      <div class="container-fluid">
        <div class="row d-flex align-items-center justify-content-center w-100">
          <a class="navbar-brand justify-content-start col-5 col me-0" href="#">
            <p>
              <img src='<c:url value="/resources/images/logo.png" />' alt="sportscorner-logo">
              <span class="fw-bold fs-2 mx-2 text-dark">
                Sportscorner
              </span>
            </p>
          </a>
          <div class="col-2 col">
          </div>
          <div class="col-5 col"></div>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <form class="section row" action="new" method="POST">
        <div class="mb-3">
          <label for="facility" class="form-label">Facility</label>
          <select required class="form-select" name="facility_id" aria-label="Default select example">
            <option selected>select facility</option>
            <%
				List<Facility> facilityList = (List<Facility>) request.getAttribute("facilityList");
				for (Facility facility : facilityList) {
					if(facility.getStatus()=="Under Maintenance") continue;
			%>
					<option value="<%=facility.getId()%>"><%=facility.getName()%></option>
			<%
				}
			%>
          </select>
        </div>
        <div class="mb-3">
          <label for="equipment" class="form-label">Equipment</label>
          <select required class="form-select" name="equipment_id" aria-label="Default select example">
            <option selected>select equipment</option>
			<%
				List<Equipment> equipmentsList = (List<Equipment>) request.getAttribute("equipmentsList");
				for (Equipment equipment : equipmentsList) {
			%>
					<option value="<%=equipment.getId()%>"><%=equipment.getName()%></option>
			<%
				}
			%>
          </select>
        </div>
        <div class="mb-3 col-6">
          <label for="from" class="form-label">from</label>
          <input required type="datetime-local" name="from" class="form-control light-border" id="from">
        </div>
        <div class="mb-3 col-6">
          <label for="to" class="form-label">to</label>
          <input required type="datetime-local" name="to"  class="form-control light-border" id="to">
        </div>
	      <button type="submit" class="btn btn-success col-1 mx-3">
	        Book
	      </button>
	      <a href="history" class="btn btn-secondary col-1 mx-3">
	        View History
	      </a>
      </form>
    </div>
  </div>

  <!-- Js bundle -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
</body>

</html>