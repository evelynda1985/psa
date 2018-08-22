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
	href="${pageContext.request.contextPath}/resources/css/style.css" />
	
<link type="text/css" rel="stylesheet" href='<spring:url value="/resources/css/style.css" htmlEscape="true"/>'/>



<title>Parents Step Ahead Login page</title>
</head>
<body>

	<br>
	<br>

	<div class="container">

		<div class="row justify-content-md-center">
			<div class="col col-lg-2"></div>

			<div class="col-md-auto">

				<form>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputEmail4">First Name</label> <input type="email"
								class="form-control" id="inputEmail4" placeholder="First Name">
						</div>
						<div class="form-group col-md-6">
							<label for="inputPassword4">Last Name</label> <input
								type="password" class="form-control" id="inputPassword4"
								placeholder="Last Name">
						</div>
					</div>

					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputState">Gender</label> <select id="inputState"
								class="form-control">
								<option selected>Choose...</option>
								<option>Female</option>
								<option>Male</option>
								<option>Other</option>
							</select>
						</div>
						<div class="form-group col-md-6">
							<label for="inputState">Civil status</label> <select
								id="inputState" class="form-control">
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
							<label for="inputState">Country of origin</label> <select
								id="inputState" class="form-control">
								<option selected>Choose...</option>
								<option>Mexico</option>
								<option>Guatemala</option>
								<option>USA</option>
								<option>...</option>
							</select>
						</div>
						<div class="form-group col-md-6">
							<label for="inputState">Education level</label> <select
								id="inputState" class="form-control">
								<option selected>Choose...</option>
								<option>Primayr</option>
								<option>Secondary</option>
								<option>College</option>
								<option>None</option>
							</select>
						</div>
					</div>

					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputState">Salary Range</label> <select
								id="inputState" class="form-control">
								<option selected>Choose...</option>
								<option>10000 - 15000</option>
								<option>16000 - 25000</option>
								<option>26000 - 40000</option>
								<option>>41000</option>
							</select>
						</div>
						<div class="form-group col-md-6">
							<label for="inputPassword4">Number of children</label> <input
								type="password" class="form-control" id="inputPassword4">
						</div>
					</div>

					Children's information <br> <br>

					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputEmail4">First Name</label> <input type="email"
								class="form-control" id="inputEmail4" placeholder="First Name">
						</div>
						<div class="form-group col-md-6">
							<label for="inputPassword4">Last Name</label> <input
								type="password" class="form-control" id="inputPassword4"
								placeholder="Last Name">
						</div>
					</div>

					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputEmail4">Age</label> <input type="email"
								class="form-control" id="inputEmail4" placeholder="Age">
						</div>
						<div class="form-group col-md-6">
							<label for="inputState">Gender</label> <select id="inputState"
								class="form-control">
								<option selected>Choose...</option>
								<option>Female</option>
								<option>Male</option>
								<option>Other</option>
							</select>
						</div>
					</div>

					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputState">Scholar's year</label> <select
								id="inputState" class="form-control">
								<option selected>Choose...</option>
								<option>Pre-K</option>
								<option>K</option>
								<option>1</option>
								<option>...</option>
							</select>
						</div>
						<div class="form-group col-md-6">
							<label for="inputState">School name</label> <select
								id="inputState" class="form-control">
								<option selected>Choose...</option>
								<option>Dallas school</option>
								<option>Fort school</option>
								<option>Harmony</option>
								<option>...</option>
							</select>
						</div>
					</div>

					<div class="form-row">
						<div class="form-group col-md-12">
							<label for="inputEmail4">City of the school</label> <input type="email"
								class="form-control" id="inputEmail4" placeholder="City of the school">
						</div>
					</div>



					<button type="submit" class="btn btn-primary">Submit</button>
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