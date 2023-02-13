<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
  <link rel="stylesheet" href="css/main.css">
</head>

<body class="bg-white">
  <div class="container-fluid">
    <nav class="navbar navbar-light bg-transparent">
      <div class="container-fluid">
        <div class="row d-flex align-items-center justify-content-center w-100">
          <a class="navbar-brand justify-content-start col-5 col me-0" href="#">
            <p>
              <img src="images/logo.png" alt="sportscorner-logo">
              <span class="fw-bold fs-2 mx-2 text-dark">
                Sportscorner
              </span>
            </p>
          </a>
          <div class="col-2 col">
            <h1 class="text-center fs-3">
              Booking history
            </h1>
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
          <tr>
            <th scope="row">1</th>
            <td>Swimming pool</td>
            <td>swimming ring</td>
            <td>50</td>
            <td>12/12/2022 11:00 AM</td>
            <td>12/12/2022 14:00 PM</td>
            <td><button class="btn btn-outline-danger">Cancel</button></td>
          </tr>
          <tr>
            <th scope="row">2</th>
            <td>Football field</td>
            <td>Blockades</td>
            <td>150</td>
            <td>12/12/2022 16:00 PM</td>
            <td>12/12/2022 18:00 PM</td>
            <td><button class="btn btn-outline-danger">Cancel</button></td>
          </tr>
        </tbody>
      </table>
      <a href="booking.jsp" class="btn btn-success col-1">
        Book now
      </a>
    </div>
  </div>

  <!-- Js bundle -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
</body>

</html>