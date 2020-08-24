<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Header</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<nav class="navbar navbar fixed-top navbar-inverse">
			 <div class="container-fluid">
			    <div class="navbar-header">
			      <a class="navbar-brand">ABC Jobs</a>
			    </div>
			    <ul class="nav navbar-nav">
			      <li><a href="#">Home</a></li>
			      <li><a href="#">About</a></li>
			      <li><a href="#">Contact</a></li>
			    </ul>
			    <ul class="nav navbar-nav navbar-right">
			      <li><a href="registrationForm"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			      <li><a data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			    </ul>
			    <div class="modal fade" id="myModal" role="dialog">
    				<div class="modal-dialog">
    
     		 		<!-- Modal content-->
      					<div class="modal-content">
        					<div class="modal-header">
         						<button type="button" class="close" data-dismiss="modal">&times;</button>
          						<h4 class="modal-title">Log In As?</h4>
        					</div>
		        			<div class="modal-body">
			        			<a href="logInAdmin" role="button" class="btn btn-default">Admin</a>
			          			<a href="logInUser" role="button" class="btn btn-default">User</a>
		        			</div>
      					</div>
  					</div>
			  	</div>
			 </div>
		</nav>
	</div>
</body>
</html>