<%@ page import="com.nareshit.dto.StudentsDTO,java.util.*"
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Add Students</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript">
	var basePath = "${pageContext.request.contextPath}";
</script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
<link type="text/css" rel="stylesheet"
	href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<link type="text/css" rel="stylesheet"
	href="https://cdn.datatables.net/buttons/1.5.4/css/buttons.dataTables.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/table-demo.js"></script>



<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.3.1.js"></script>

<script type="text/javascript">
	function search() {

		frm.submit();
	}
</script>
<style type="text/css">
body {
	background-color: #e9ecef;
}

h.container {
	-ms-overflow-style: none;
	//
	IE
	10+
	overflow
	:
	-moz-scrollbars-none;
	//
	Firefox
}

.container::-webkit-scrollbar {
	display: none;
	//
	Safari
	and
	Chrome
}

::-webkit-scrollbar {
	display: none;
}
</style>
</head>
<body>

	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

		if (session.getAttribute("username") == null) {
			response.sendRedirect("login.html");
		}
	%>

	<nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-dark">
		<button class="navbar-toggler navbar-toggler-right" type="button"
			data-toggle="collapse" data-target="#navbarTogglerDemo03"
			aria-controls="navbarTogglerDemo03" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<a class="navbar-brand font-weight-bold" href="#!"><img
			src="images/nareshit-logo.png" alt="Logo" height="40px"></a>

		<div class="collapse navbar-collapse" id="navbarTogglerDemo03">
			<ul class="navbar-nav mr-auto mt-2 mt-md-0 font-weight-bold">
				<li class="nav-item"><a class="nav-link" href="search.jsp">Search
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item active"><a class="nav-link" href="add.jsp">Add</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="update.jsp">Update</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="delete.jsp">Delete</a>
				</li>
			</ul>
			<ul class=" nav navbar-inverse bg-dark font-weight-bold">

				<li class="nav-item  "><a class="nav-link " href="#!"
					style="text-transform: capitalize">Signed In As ${username}</a></li>
				<li class="nav-item  "><a class="nav-link" href="logout">Logout</a>
				</li>
			</ul>

		</div>
	</nav>

	<script src="assets/js/cities.js"></script>


	<div class="mt-2 d-flex justify-content-center">

		<form action="controller" method="post" class="needs-validation"
			novalidate>
			<input type="hidden" name="reqtype" value="add">
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="fname">First Name</label> <input type="text"
						name="fname" class="form-control text-capitalize" id="fname"
						placeholder="First Name" required="required" autocomplete="off">
					<div class="valid-feedback">Nice Name :)</div>
					<div class="invalid-feedback">Ohhoo Please Tell Name!</div>
				</div>
				<div class="form-group col-md-6">
					<label for="lname">Last Name</label> <input type="text"
						name="lname" class="form-control text-capitalize" id="lname"
						placeholder="Last Name" required="required" autocomplete="off">
					<div class="valid-feedback">Looks good!</div>
					<div class="invalid-feedback">Ohhoo Please Tell Last Name!</div>
				</div>

			</div>
			

			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="age">Age</label> <input type="text" name="age"
						class="form-control" id="age" placeholder="Age"
						required="required" autocomplete="off">
					<div class="valid-feedback">That's Great</div>
					<div class="invalid-feedback">Don't Worry , We Won't tell
						anyone.</div>
				</div>

				<div class="form-group col-md-6">
					<label for="gender">Gender</label> <select name="gender"
						id="gender" class="form-control custom-select dropdown-toggle"
						required="required">
						<option value="">--Select Gender--</option>
						<option value="male">Male</option>
						<option value="female">Female</option>
					</select>
					<div class="valid-feedback">Hmmm</div>
					<div class="invalid-feedback">Please Select Gender.</div>

				</div>
			</div>
			<div class="form-row">

				<div class="form-group col-md-6">
					<label for="course">Course</label> <select name="course"
						id="course" class="form-control custom-select dropdown-toggle"
						required="required">
						<option value="">--Select Course--</option>
						<option value="ui">UI/UX</option>
						<option value="java">Java</option>
						<option value="net">.Net</option>
						<option value="php">PHP</option>
						<option value="webservice">WebServices</option>
					</select>
					<div class="valid-feedback">Good Choice</div>
					<div class="invalid-feedback">Please Select Course.</div>
				</div>
				<div class="form-group col-md-6">
					<label for="track">Track</label> <select name="track" id="track"
						class="form-control custom-select dropdown-toggle"
						required="required">
						<option value="">--Select Track--</option>
						<option value="normal">Normal Track</option>
						<option value="fast">Fast Track</option>
					</select>
					<div class="valid-feedback">Good Choice</div>
					<div class="invalid-feedback">Please Select Course.</div>
				</div>
			</div>

			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="aadhar">Aadhar Number</label> <input type="text"
						name="aadhar" class="form-control text-capitalize" id="aadhar"
						placeholder="Aadhar Number" required="required" autocomplete="off">
					<div class="valid-feedback">Good !</div>
					<div class="invalid-feedback">Please Provide Aadhar Card
						number!</div>
				</div>
				<div class="form-group col-md-6">
					<label for="mob">Mobile Number</label> <input type="text"
						name="mob" class="form-control text-capitalize" id="mob"
						placeholder="Mobile Number" required="required" autocomplete="off">
					<div class="valid-feedback">Looks Good!</div>
					<div class="invalid-feedback">We Never Share With Anyone!</div>
				</div>

			</div>

			<div class="form-group">
				<label for="inputAddress">Address</label> <input type="text"
					name="addrs" class="form-control text-capitalize" id="inputAddress"
					placeholder="Enter Address" required="required">
				<div class="valid-feedback">Good !</div>
				<div class="invalid-feedback">Please Enter Address!</div>
			</div>

			<div class="form-row">
                      <div class="form-group col-md-6">
                        <label for="sts">State</label>
                        <select onchange="print_city('state', this.selectedIndex);" id="sts" name ="state"  class="form-control custom-select dropdown-toggle" required="required">
                          </select>
                          <div class="valid-feedback">
                              Good !
                            </div>
                            <div class="invalid-feedback">
                                 Please Select State!
                                </div>
                      </div>
                      <div class="form-group col-md-6">
                          <label for="state">City</label>
                          <select id ="state" name="city" class="form-control custom-select dropdown-toggle" required>
                            <option>--Select City--</option>
                            <option>Please Select State</option>
                            </select>
                            <div class="valid-feedback">
                                Good !
                              </div>
                              <div class="invalid-feedback">
                                   Please Select City!
                                  </div>
                        </div>
                     </div>
                  
	

	<button type="submit" class="btn btn-dark w-100">
		<i class="fa fa-user-plus mr-2" aria-hidden="true"></i>ADD STUDENT
	</button>
	</form>
</div>
	

	<script>
		// Example starter JavaScript for disabling form submissions if there are invalid fields
		(function() {
			'use strict';
			window.addEventListener('load',
					function() {
						// Fetch all the forms we want to apply custom Bootstrap validation styles to
						var forms = document
								.getElementsByClassName('needs-validation');
						// Loop over them and prevent submission
						var validation = Array.prototype.filter.call(forms,
								function(form) {
									form.addEventListener('submit', function(
											event) {
										if (form.checkValidity() === false) {
											event.preventDefault();
											event.stopPropagation();
										}
										form.classList.add('was-validated');
									}, false);
								});
					}, false);
		})();
	</script>
	<script language="Javascript" src="jquery.js"></script>
	<script type="text/JavaScript" src='state.js'></script>
	<script type="text/JavaScript">
		print_state("sts");
	</script>
	<script src="/bootstrap/js/bootstrap.min.js"></script>
	<script src="/bootstrap/js/bootstrap.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
</body>
</html>