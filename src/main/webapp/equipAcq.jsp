<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
</style>
<title>SportsCorner | Acquire Equipments</title>
</head>
<body>
    <div class="container d-flex justify-content-center align-items-center">
        <form action="equipAcq.jsp" method="POST">
            <table>
                <tr>
                    <th class="text-center" colspan="2">
                        <h1>Acquire New Equipments</h1>
                    </th>
                </tr>
                <tr>
                    <td colspan="2">
                        <label for="faciltiy">Targeted Faciltiy</label> <br>
                        <select class="form-select" id="faciltiy" name="facility" style="width:500px; height: 40px;">
                            <option selected>Choose a facility...</option>
                            <option value="1">Gym</option>
                            <option value="2">Swimming Pool</option>
                            <option value="3">Soccer Field</option>
                        </select>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="equipment">Equipment Name</label> <br>
                        <textarea class="form-control" name="equipment" id="equipment" cols="23"></textarea>
                    </td>

                    <td>
                        <label for="equipDetails">Equipment Details</label> <br>
                        <textarea class="form-control" name="equipDetails" id="equipDetails" cols="23"></textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="provider">Provider Name</label> <br>
                        <select class="form-select" name="provider" id="provider">
                            <option selected>Choose a provider...</option>
                            <option value="1">homegym</option>
                            <option value="2">providerx</option>
                        </select>
                        <br>
                    </td>
                    <td>
                        <label for="email">Provider Email</label>
                        <input class="form-control" id="email" name="email" type="email" disabled> <br>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div class="d-flex justify-content-center">
                            <input class="btn btn-success" type="submit" value="Place Order" style="width:250px"> <br>
                        </div>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>