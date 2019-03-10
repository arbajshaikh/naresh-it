<%@ page import="com.nareshit.dto.StudentsDTO,java.util.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Search Students</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script type="text/javascript">
	var basePath = "${pageContext.request.contextPath}";
</script>
  
  <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.4/css/buttons.dataTables.min.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css">
 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/table-demo.js"></script>
	
	<link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.4/css/buttons.dataTables.min.css">	
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.4/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.5.4/js/buttons.html5.min.js"></script>
<script type="text/javascript">
	function search() {

		frm.submit();
	}
</script>
	<style type="text/css">
body{
background-color:#e9ecef;
width:100%;
}
::-webkit-scrollbar {
display: none;
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

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
    data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false"
    aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand font-weight-bold" href="#!"><img src="images/nareshit-logo.png" alt="Logo" height="45px"></a>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
    <ul class="navbar-nav mr-auto mt-2 mt-md-0 font-weight-bold" >
      <li class="nav-item active">
        <a class="nav-link fas fa-download" href="#!">Search
          <span class="sr-only">(current)</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="add.jsp">Add</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#!">Update</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#!">Delete</a>
      </li>
      </ul>
      <ul class=" nav navbar-inverse bg-dark font-weight-bold navbar-right ">
    
    	<li class="nav-item  ">
        <a class="nav-link " href="#!" style="text-transform: capitalize">Signed In As ${username}</a>
      </li>
      <li class="nav-item  ">
        <a class="nav-link" href="logout">Logout</a>
      </li>
    </ul>
    
  </div>
</nav>


  <div class="container w-100 ">
    
    <form name="frm" action="controller" method="get">
<div class="container mt-5 d-flex justify-content-center  ">
<select class="custom-select w-50 font-weight-bold  center dropdown-toggle" name="q" onchange="search()">
  <option selected>--Select Course--</option>
  <option value="ui">UI/UX Technology</option>
  <option value="java">Java</option>
  <option value="php">PHP</option>
  <option value="net">.Net</option>
  <option value="android">Android</option>
  <option value="webservice">Web Services</option>
</select>
</div>
<input type="hidden" value="search" name="reqtype">
</form>
<br><br>
<form>
		<div class="clearfix" >
		<div class="formDiv"  >
			<table border="0" margin="0" padding="0" width="100%"
				class="table table-responsive border shadow p-1 mb-5 bg-light rounded" id="studentListTable">
				<thead class="thead-dark">
					<tr>
					<th>Registration Id</th>
					<th>Reg Id</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Age</th>
					<th>Gender</th>
					<th>Course</th>
					<th>Track</th>
					<th>Aadhar No</th>
					<th>Mobile</th>
					<th>Address</th>
					<th>State</th>
					<th>Reg Date</th>
					</tr>
				</thead>
				<tbody class="text-uppercase">
					<%
						if (request.getAttribute("studentList") != null) {
							List<StudentsDTO> listDTO = (List<StudentsDTO>) request.getAttribute("studentList");
					%>
					<%
						if (listDTO != null) {
								for (StudentsDTO dto : listDTO) {
					%>
					<tr style="text-align:center">
						<td><%=dto.getRegId()%></td>
						<td><%=dto.getRegId()%></td>
						<td><%=dto.getSname()%></td>
						<td><%=dto.getAge()%></td>
						<td><%=dto.getGender()%></td>
						<td><%=dto.getCourse()%></td>
						<td><%=dto.getAadharNo()%></td>
						<td><%=dto.getPhNo()%></td>
						<td><%=dto.getAddrs()%></td>
						<td><%=dto.getRegDate()%></td>

					</tr>
					<%
						}
							}

						}
					%>

				</tbody>
			</table>
			</div>
		</div>
	</form>
  </div>





</body>
</html>