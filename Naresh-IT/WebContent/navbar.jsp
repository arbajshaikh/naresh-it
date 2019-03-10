<%@ page import="java.util.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Search</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
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
      <a class="navbar-brand" href="#">Naresh IT</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Search</a></li>
      <li ><a href="add.jsp">Add Students</a></li>
      <li><a href="#">Update Details</a></li>
      <li><a href="#">Delete Record</a></li>
    </ul>
    
    <!-- Right Align Item -->
    
    <ul class="nav navbar-nav navbar-right ">
    	<li><a href="" style="text-transform: capitalize; font-weight: bolder">Welcome ${username}</a></li>
    	<li><a href="logout">Logout</a></li>
    </ul>
  </div>
</nav>



</body>
</html>