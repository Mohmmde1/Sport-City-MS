<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>feedback</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="css/submit_feedback.css"/>
  </head>
  <div class="feedback-form">
    <div class="header">

        <h2 >Feedback</h2>
    </div>
    <form>
      <div class="form-group">
        <label>Full Name</label><br>
        <input type="text" class="" />
      </div>
      <div class="form-group">
        <label for="exampleInputEmail1">Email address</label><br>
        <input
          type="email"
          class=""
          id="exampleInputEmail1"
          aria-describedby="emailHelp"
          
        />
      </div>
      <div class="form-group">
        <label for="message">Message</label><br />
        <textarea name="" id="message" ></textarea>
      </div>

      <button type="submit" class="btn btn-primary">Send</button>
    </form>
  </div>
</html>
