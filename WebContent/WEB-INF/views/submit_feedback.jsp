<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>SportsCorner | Feedback</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous" />
<link href="<c:url value="/resources/css/submit_feedback.css" />" rel="stylesheet">
</head>
<div class="feedback-form">
	<div class="header">

		<h2>Feedback</h2>
	</div>
	<form action="submit" method="post" onsubmit="submitForm()">
		<div class="form-group">
			<label>Full Name</label><br> <input type="text" class=""
				name="name" />
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1">Email address</label><br> <input
				type="email" class="" name="email" id="email"
				aria-describedby="emailHelp" />
		</div>
		<div class="form-group">
			<label for="message">Message</label><br />
			<textarea name="message" id="message"></textarea>
		</div>

		<input type="submit" class="btn btn-primary">
	</form>

</div>
<script>
	function submitForm() {
		alert("Your Feedback has been received! Thanks for your feedback");
	}
</script>
</html>
