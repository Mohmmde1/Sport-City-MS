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
          </div>
          <div class="col-5 col"></div>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <form class="section row">
        <div class="mb-3">
          <label for="username" class="form-label">Facility</label>
          <select class="form-select" aria-label="Default select example">
            <option selected>select facility</option>
            <option value="1">Football field</option>
            <option value="2">Basketball court</option>
            <option value="3">Tennis court</option>
          </select>
        </div>
        <div class="mb-3">
          <label for="username" class="form-label">Equipment</label>
          <select class="form-select" aria-label="Default select example">
            <option selected>select equipment</option>
            <option value="1">Goalkeeper machine</option>
            <option value="2">obstacles</option>
          </select>
        </div>
        <div class="mb-3 col-6">
          <label for="from" class="form-label">from</label>
          <input type="datetime-local" class="form-control light-border" id="from">
        </div>
        <div class="mb-3 col-6">
          <label for="to" class="form-label">to</label>
          <input type="datetime-local" class="form-control light-border" id="to">
        </div>
        <div class="mb-3 col-6">
          <label for="card" class="form-label">Card number</label>
          <input type="text" class="form-control light-border" id="card">
        </div>
        <div class="mb-3 col-6">
          <label for="holder" class="form-label">Card holder</label>
          <input type="text" class="form-control light-border" id="holder">
        </div>
        <div class="mb-3 col-2">
          <label for="expiration" class="form-label">Expiration</label>
          <input type="date" class="form-control light-border" id="expiration">
        </div>
        <div class="mb-3 col-2">
          <label for="holder" class="form-label">CV</label>
          <input type="number" class="form-control light-border" id="holder">
        </div>
      </form>
      <a href="history.jsp" class="btn btn-success col-1">
        Book
      </a>
    </div>
  </div>

  <!-- Js bundle -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
</body>

</html>