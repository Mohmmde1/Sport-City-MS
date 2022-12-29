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
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="css/profile.css" />
  </head>
  <body>
    <div class="user-avatar">
        <img
          src="https://bootdey.com/img/Content/avatar/avatar7.png"
          alt="Maxwell Admin"
        />
    </div>
    <form>
      <div class="row">
        <div class="col">
          <label>First Name</label><br />
          <input type="text" class="form-control" placeholder="First name" />
        </div>
        <div class="col">
          <label>Last Name</label><br />
          <input type="text" class="form-control" placeholder="Last name" />
        </div>
      </div>

        <div class="row element">
            <label> Birthdate</label>
            <input type="date"  class="form-control" placeholder="First name" />
        </div>

        <div class="row element">
            <label> Phone No</label>
            <input type="text"  placeholder="Phone No" />
        </div>
        <div class="row element">
            <label> Email</label>
            <input type="email"  placeholder="Email Address" />
        </div>
        <div>
            <button type="submit" class="save-button element">Save</button>
        </div>
      
    </form>
  </body>
</html>
