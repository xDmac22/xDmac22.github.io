<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Header Log In</title>
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
			      <a class="navbar-brand" href="#">ABC Jobs</a>
			    </div>
			    <ul class="nav navbar-nav">
			      <li><a href="#">Home</a></li>
			      <li><a href="showJobs">Jobs</a></li>
			      <li><a href="viewThreads">Threads</a></li>
			    </ul>
			    <ul class="nav navbar-nav navbar-right">
			    	<li><a href="viewInbox.action?userName=<s:property value="#session.userName"/>"><span class="glyphicon glyphicon-envelope"></span> Messages</a></li>
			      <li><a href="viewProfile"><span class="glyphicon glyphicon-user"></span> Profile</a></li>
			      <li><a href="logout"><span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
			    </ul>
			    <form class="form-inline my-2 my-lg-0" action="search">
      				<input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search" name="searchUser">
      				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    			</form>
			 </div>
		</nav>
	</div>
</body>
</html>