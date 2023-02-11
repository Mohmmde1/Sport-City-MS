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

<body class="bg-black">
  <div class="container-fluid">
    <nav class="navbar navbar-light bg-transparent">
      <div class="container-fluid">
        <div class="row d-flex align-items-center justify-content-center w-100">
          <a class="navbar-brand justify-content-start col-5 col me-0" href="#">
            <p>
              <img src="images/logo.png" alt="sportscorner-logo">
              <span class="fw-bold fs-2 mx-2 text-white">
                Sportscorner
              </span>
            </p>
          </a>
          <div class="col-2 col">
            <h1 class="text-white text-center">
              Login
            </h1>
          </div>
          <div class="col-5 col"></div>
        </div>
      </div>
    </nav>


    <div id="auth-container" class="container">
      <div class="mb-3">
        <label for="username" class="form-label text-white">Username</label>
        <input type="text" class="form-control light-border" id="username" placeholder="name@example.com">
      </div>
      <div class="mb-3">
        <label for="password" class="form-label text-white">password</label>
        <input type="password" class="form-control light-border" id="password" placeholder="****">
      </div>
      <p class="text-white">
        haven't registered yet? <a href="register.jsp">click here</a>
      </p>
      <a href="landing.jsp" class="btn btn-outline-secondary">
        Login
      </a>
    </div>
  </div>

  <!-- Js bundle -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
</body>

</html>