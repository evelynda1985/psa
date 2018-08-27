<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">


<link type="text/css" rel="stylesheet"
	href='<spring:url value="/resources/css/style.css" htmlEscape="true"/>' />



<title>Parents Step Ahead Login page</title>
</head>
<body>

	<br>
	<br>

	<div class="container">


		<div class="row justify-content-md-center">
			<div class="col col-lg-2"></div>

			<div class="col-md-auto bluebg border text-white ">
				<br>
				<h3>Registration Form</h3>
				<small>
					<p class="text-white">We'll never share your information with
						anyone else.</p>
				</small> <br>

				<form>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputEmail4">Event school name</label> <select
								id="inputState" class="form-control">
								<option selected>Choose...</option>
								<option>School1</option>
								<option>School2</option>
								<option>...</option>
							</select>
						</div>
						<div class="form-group col-md-6">
							<label for="inputPassword4">Event school city</label> <select
								id="inputState" class="form-control">
								<option selected>Choose...</option>
								<option>City1</option>
								<option>City2</option>
								<option>...</option>
							</select>
						</div>
					</div>

					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputEmail4">Phone Number</label> <input type="email"
								class="form-control" id="inputEmail4" placeholder="Phone Number">
						</div>
						<div class="form-group col-md-6">
							<label for="inputPassword4">email</label> <input type="password"
								class="form-control" id="inputPassword4" placeholder="email">
						</div>
					</div>

					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputEmail4">Address</label> <input type="email"
								class="form-control" id="inputEmail4" placeholder="Address">
						</div>

						<div class="form-group col-md-6">
							<label for="inputState">City</label> <select id="inputState"
								class="form-control">
								<option selected>Choose...</option>
								<option>Dallas</option>
								<option>Irving</option>
								<option>...</option>
							</select>
						</div>

					</div>

					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputState">State</label> <select id="inputState"
								class="form-control">
								<option selected>Choose...</option>
								<option>Texas</option>
								<option>Ohio</option>
								<option>...</option>
							</select>
						</div>
						<div class="form-group col-md-6">
							<label for="inputEmail4">Zip</label> <input type="email"
								class="form-control" id="inputEmail4" placeholder="Zip">
						</div>
					</div>

					<div class="row">
						<div class="col">
							<button type="button" class="btn btn-primary"
								onclick="window.location.href='registrationForm'; return false;">Back</button>
						</div>
						<div class="col"></div>
						<div class="col"></div>
						<div class="col">
							<button type="submit" class="btn btn-primary"
								onclick="window.location.href='childrenInformation'; return false;">Next</button>
							<br> <br>
						</div>
					</div>

				</form>

			</div>

			<div class="col col-lg-2"></div>
		</div>
	</div>



	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>