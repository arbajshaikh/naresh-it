<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Search</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.4/css/buttons.dataTables.min.css">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<style>
/* BASIC */

html {
  background-color: #56baed;
}

body {
  font-family: "Poppins", sans-serif;
  height: 100vh;
}

a {
  color: #92badd;
  display:inline-block;
  text-decoration: none;
  font-weight: 400;
}

h2 {
  text-align: center;
  font-size: 16px;
  font-weight: 600;
  text-transform: uppercase;
  display:inline-block;
  margin: 40px 8px 10px 8px; 
  color: #cccccc;
}



/* STRUCTURE */

.wrapper {
  display: flex;
  align-items: center;
  flex-direction: column; 
  justify-content: center;
  width: 100%;
}

#formContent {
  -webkit-border-radius: 10px 10px 10px 10px;
  border-radius: 10px 10px 10px 10px;
  background: #fff;
  padding: 30px;
  width: 90%;
  max-width: 450px;
  position: relative;
  padding: 0px;
  -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
  box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
  text-align: center;
}

#formFooter {
  background-color: #000;
  border-top: 1px solid #dce8f1;
  padding: 25px;
  text-align: center;
  -webkit-border-radius: 0 0 10px 10px;
  border-radius: 0 0 10px 10px;
}



/* TABS */

h2.inactive {
  color: #cccccc;
}

h2.active {
  color: #0d0d0d;
  border-bottom: 2px solid #5fbae9;
}



/* FORM TYPOGRAPHY*/

input[type=button], input[type=submit], input[type=reset]  {
  background-color: #56baed;
  border: none;
  color: white;
  padding: 15px 80px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  text-transform: uppercase;
  font-size: 13px;
  -webkit-box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
  box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
  -webkit-border-radius: 5px 5px 5px 5px;
  border-radius: 5px 5px 5px 5px;
  margin: 5px 20px 40px 20px;
  -webkit-transition: all 0.3s ease-in-out;
  -moz-transition: all 0.3s ease-in-out;
  -ms-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}

input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover  {
  background-color: #39ace7;
}

input[type=button]:active, input[type=submit]:active, input[type=reset]:active  {
  -moz-transform: scale(0.95);
  -webkit-transform: scale(0.95);
  -o-transform: scale(0.95);
  -ms-transform: scale(0.95);
  transform: scale(0.95);
}

input[type=text] {
  background-color: #f6f6f6;
  border: none;
  color: #0d0d0d;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 5px;
  width: 85%;
  border: 2px solid #f6f6f6;
  -webkit-transition: all 0.5s ease-in-out;
  -moz-transition: all 0.5s ease-in-out;
  -ms-transition: all 0.5s ease-in-out;
  -o-transition: all 0.5s ease-in-out;
  transition: all 0.5s ease-in-out;
  -webkit-border-radius: 5px 5px 5px 5px;
  border-radius: 5px 5px 5px 5px;
}



input[type=text]:focus {
  background-color: #fff;
  border-bottom: 2px solid #5fbae9;
}

input[type=text]:placeholder {
  color: #cccccc;
}



/* ANIMATIONS */

/* Simple CSS3 Fade-in-down Animation */
.fadeInDown {
  -webkit-animation-name: fadeInDown;
  animation-name: fadeInDown;
  -webkit-animation-duration: 1s;
  animation-duration: 1s;
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
}

@-webkit-keyframes fadeInDown {
  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);
  }
  100% {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

@keyframes fadeInDown {
  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);
  }
  100% {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

/* Simple CSS3 Fade-in Animation */
@-webkit-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
@-moz-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
@keyframes fadeIn { from { opacity:0; } to { opacity:1; } }

.fadeIn {
  opacity:0;
  -webkit-animation:fadeIn ease-in 1;
  -moz-animation:fadeIn ease-in 1;
  animation:fadeIn ease-in 1;

  -webkit-animation-fill-mode:forwards;
  -moz-animation-fill-mode:forwards;
  animation-fill-mode:forwards;

  -webkit-animation-duration:1s;
  -moz-animation-duration:1s;
  animation-duration:1s;
}

.fadeIn.first {
  -webkit-animation-delay: 0.4s;
  -moz-animation-delay: 0.4s;
  animation-delay: 0.4s;
}

.fadeIn.second {
  -webkit-animation-delay: 0.6s;
  -moz-animation-delay: 0.6s;
  animation-delay: 0.6s;
}

.fadeIn.third {
  -webkit-animation-delay: 0.8s;
  -moz-animation-delay: 0.8s;
  animation-delay: 0.8s;
}

.fadeIn.fourth {
  -webkit-animation-delay: 1s;
  -moz-animation-delay: 1s;
  animation-delay: 1s;
}

/* Simple CSS3 Fade-in Animation */
.underlineHover:after {
  display: block;
  left: 0;
  bottom: -10px;
  width: 0;
  height: 2px;
  background-color: #56baed;
  content: "";
  transition: width 0.2s;
}

.underlineHover:hover {
  color: #0d0d0d;
}

.underlineHover:hover:after{
  width: 100%;
}

h1{
    color:#60a0ff;
}

/* OTHERS */

*:focus {
    outline: none;
} 

#icon {
  width:30%;
}
	
	</style>
	
	</head>
<body>

    <%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		
		if(session.getAttribute("username")==null){
			response.sendRedirect("login.html");
		}		
	%> 

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Students Management</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="search.jsp">Search</a></li>
      <li class="active"><a href="add.jsp">Add Students</a></li>
      <li><a href="#">Update Details</a></li>
      <li><a href="#">Delete Record</a></li>
    </ul>
    
    <!-- Right Align Item -->
    
    <ul class="nav navbar-nav navbar-right ">
    	<li><a href="" style="text-transform: capitalize; font-weight: bolder">Welcome ${username}</a></li>
    	<li><a href="Logout">Logout</a></li>
    </ul>
  </div>
</nav>

<div class="wrapper">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div>
      <img src="data:image/png;base64,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" width="180" height="130" id="icon" alt="User Icon" />
      <h1>Add Student</h1>
    </div>

    <!-- Login Form -->
    <form action="#" method="post">
     
      <input type="text" id="search" name="name" placeholder="Name" required Autocomplete="off">
      <br>
       <input type="text" id="search" name="name" placeholder="Name" required Autocomplete="off">
      <br>
       <input type="text" id="search" name="name" placeholder="Name" required Autocomplete="off">
      <br>
      <div class="form-check form-check-inline ">
  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
  <label class="form-check-label" for="inlineRadio1">IT</label>


  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
  <label class="form-check-label" for="inlineRadio2">Mechanical</label>


  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3" >
  <label class="form-check-label" for="inlineRadio3">Civil</label>
</div>
      <input type="text" id="search"  name="address" placeholder="Address" required Autocomplete="off">
    
     
      <input type="submit" onclick="showRno()" value="ADD STUDENT">
       
      
    </form>

  
    

  </div>
</div>




</body>
</html>