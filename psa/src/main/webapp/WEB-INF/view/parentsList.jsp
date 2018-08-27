<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>

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
				<h3>Parents' List</h3>
				<small>
					<p class="text-white">Don't share this information with anyone
						else.</p>
				</small>

			

					<div class="form-group col-md-12">
						
						<!--  add a search box -->
			            <form:form action="search" method="POST">
			           		 <input type="text" name="theSearchName" class="form-control"/>
			                <br>
			                <center><input type="submit" value="Search" class="btn btn-primary" /></center>
			            </form:form>						
					
					</div>
					<button type="submit" class="btn btn-primary"
						onclick="window.location.href='registrationForm'; return false;">Add</button>
						
					<br> <br>

					<table class="table">
						<thead>
							<tr>
								<th scope="col">#</th>
								<th scope="col">First Name</th>
								<th scope="col">Last Name</th>
								<th scope="col">Country of Origin</th>
								<th scope="col"> Edit | Delete</th>
							</tr>	
						</thead>
						
						<tbody>
						
						<!-- loop over and print our customers -->
						<c:forEach var="tempParent" items="${ParentsList}"> 	
						
						<!-- construct an "update" link with customer id -->
						<c:url var="updateParent" value="/showFormForUpdate">
							<c:param name="idParent" value="${tempParent.idParent}" />
						</c:url>					
	
						<!-- construct an "delete" link with customer id -->
						<c:url var="deleteParent" value="/delete">
							<c:param name="idParent" value="${tempParent.idParent}" />
						</c:url>
						
										
							<tr>
								<td> ${tempParent.idParent} </td>
								<td> ${tempParent.firstName} </td>
								<td> ${tempParent.lastName} </td>
								<td> ${tempParent.countryOfOrigin} </td>
								
							<td>
							<!-- display the update link -->
							<a href="${updateParent}" class="text-white" >Update</a>
							|
							<a href="${deleteParent}" class="text-white"
							   onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
							</td>
							
							</tr>
						</c:forEach>
						
						</tbody>
						
					</table>

					<button type="submit" class="btn btn-primary"
						onclick="window.location.href='homeApp'; return false;">Home</button>
					<br> <br>

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