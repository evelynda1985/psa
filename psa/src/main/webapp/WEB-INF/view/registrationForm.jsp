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



<title>Parents Step Ahead Registration Form part 1/3</title>
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

				<form:form action="saveParent" modelAttribute="parent" method="POST">

					<form:hidden path="idParent" />

					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="parentFirstName">First Name</label>
							<form:input path="firstName" type="text" class="form-control" onkeypress="isCharacter(event)"
								id="parentFirstName" placeholder="First Name" />
						</div>

						<div class="form-group col-md-6">
							<label for="parentLastName">Last Name</label>
							<form:input path="lastName" type="text" class="form-control" onkeypress="isCharacter(event)"
								id="parentLastName" placeholder="Last Name" />
						</div>
					</div>

					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputGender">Gender</label> <select id="inputGender"
								class="form-control">
								<option selected>Choose...</option>
								<option>Female</option>
								<option>Male</option>
								<option>Other</option>
							</select>
						</div>
						<div class="form-group col-md-6">
							<label for="inputCivilStatus">Civil status</label> <select
								id="inputCivilStatus" class="form-control">
								<option selected>Choose...</option>
								<option>Single</option>
								<option>Married</option>
								<option>Divorced</option>
								<option>Widow</option>
								<option>common-law marriage</option>
							</select>
						</div>
					</div>

					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="countryOfOrigin">Country of origin</label>
							<form:select path="countryOfOrigin" id="countryOfOrigin"
								class="form-control">
								<option selected>Choose...</option>
								<option>Mexico</option>
								<option>Guatemala</option>
								<option>USA</option>
								<option>...</option>
							</form:select>
						</div>
						<div class="form-group col-md-6">
							<label for="inputEducationLevel">Education level</label> <select
								id="inputEducationLevel" class="form-control">
								<option selected>Choose...</option>
								<option>Elementary</option>
								<option>Middle</option>
								<option>High School</option>
								<option>College</option>
								<option>None</option>
							</select>
						</div>
					</div>

					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputIncome">Annual household income</label> <select
								id="inputIncome" class="form-control">
								<option selected>Choose...</option>
								<option>$10,000 - 15,000</option>
								<option>$16,000 - 25,000</option>
								<option>$26,000 - 40,000</option>
								<option>$51,000 +</option>
							</select>
						</div>
						<div class="form-group col-md-6"></div>
					</div>

					<input type="submit" value="Save" class="btn btn-primary" />

					<br>
					<br>

					<div></div>
					<div class="row">
						<div class="col">
							<button type="button" class="btn btn-primary"
								onclick="window.location.href='parentsList'; return false;">Back</button>
						</div>
						<div class="col"></div>
						<div class="col"></div>
						<div class="col">
							<button type="button" class="btn btn-primary"
								onclick="window.location.href='registrationForm2'; return false;">Next</button>
						</div>
					</div>

					<br>
					<br>
				</form:form>

			</div>

			<div class="col col-lg-2"></div>
		</div>
	</div>

	<script src="./resources/js/registrationFormValidation.js"></script>

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