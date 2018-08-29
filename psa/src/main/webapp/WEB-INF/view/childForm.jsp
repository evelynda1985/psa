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
				<p class="text-white"><small> We'll never share your information with anyone else.</small></p>
				<br>

				<form>

					<h5>Child information</h5>
					<br>

					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="childFirstName">First Name</label> <input type="text"
								class="form-control" id="childFirstName" placeholder="First Name">
						</div>

						<div class="form-group col-md-6">
							<label for="childGender">Gender</label> 
							<select id="childGender" class="form-control">
								<option selected>Choose...</option>
								<option>Female</option>
								<option>Male</option>
								<option>Other</option>
							</select>
						</div>

					</div>

					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="childAge">Age</label> 
							<input type="text" class="form-control" id="childAge" placeholder="Age">
						</div>
						<div class="form-group col-md-6">
							<label for="childSchoolGrade">School's grade</label> 
							<select id="childSchoolGrade" class="form-control">
								<option selected>Choose...</option>
								<option>Pre-K</option>
								<option>K</option>
								<option>1</option>
								<option>...</option>
							</select>
						</div>
					</div>

					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="childSchoolName">School's name</label> 
							<input type="text" class="form-control" id="childSchoolName"
								placeholder="School's name">
						</div>
						<div class="form-group col-md-6">
							<label for="childSchoolCity">School's city</label> 
							<select id="childSchoolCity" class="form-control">
								<option selected>Choose...</option>
								<option>Dallas school</option>
								<option>Fort school</option>
								<option>Harmony</option>
								<option>...</option>
							</select>
						</div>
					</div>

					<div class="row">
						<div class="col">
							<button type="button" class="btn btn-primary"
								onclick="window.location.href='childrenInformation'; return false;">Back</button>
						</div>
						<div class="col"></div>
						<div class="col"></div>
						<div class="col">
							<button type="submit" class="btn btn-primary"
								onclick="window.location.href='childrenInformation'; return false;">Save</button>
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