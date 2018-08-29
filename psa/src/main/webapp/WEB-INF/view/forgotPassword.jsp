<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

<!--  -->
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">



<title>Parents Step Ahead Login page</title>
</head>
<body>

	<br>
	<br>

	<div class="container">

		<div class="row justify-content-md-center">
			<div class="col col-lg-2"></div>

			<div class="col-md-auto bluebg border text-white">

				<div class="img">
					<img src="../psa/resources/img/logo.png" alt="logo">
				</div>

				<form>
					<div class="form-group">
						<label for="phoneNumber">Phone Number</label> 
						<input type="text" maxlength="10" onkeypress="isNumberKey(event)"  
							class="form-control" id="phoneNumber" aria-describedby="phoneNumberHelp"
							placeholder="Enter your phone number"> 
							<p class="text-white"><small>We'll send you a code to your phone number</small></p>
							
							<button type="button" class="btn btn-primary">Send Code</button>

					</div>
					<div class="form-group">
						<label for="code">Insert Code</label> 
						<input type="text"
							class="form-control" id="code" aria-describedby="codeHelp"
							placeholder="Text the code that we sent you to your phone number">
					</div>

					<button type="button" class="btn btn-primary"
					onclick="window.location.href='resetPassword'; return false;">Reset Password</button>

					<br>
					<br>

				</form>

			</div>

			<div class="col col-lg-2"></div>
		</div>
	</div>


	<script src="./resources/js/loginValidation.js"></script>
	
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