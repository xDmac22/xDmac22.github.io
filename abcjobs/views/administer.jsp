<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ABC Jobs Administer</title>
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
			      <li><a href="administer">Manage Users</a></li>
			      <li><a>Send Bulk Email</a></li>
			      <li><a href="logout">Log Out</a></li>
			    </ul>
			 </div>
		</nav>
	</div>
	<div class="container">
		<div class="row">
			<div class="card col-sm-4">
				<img class="card-img-top" src="images/manage.jpg" alt="card1" width="355" height="250">
				<div class="card-body">
					<h4 class="card-title"><a href="administer">Manage Users</a></h4>
					<p class="card-text">
						Edit, Delete or Update User Information.
					</p>
				</div>
			</div>
			<div class="card col-sm-4">
				<img class="card-img-top" src="images/email.jpg" alt="card2" width="355" height="250">
				<div class="card-body">
					<h4 class="card-title"><a href="sendemail.action?submitType=compose&username=<s:property value="admin.userName"/>">Send Bulk Email</a></h4>
					<p class="card-text">
						Send Email Invitation to multiple programmers.
					</p>
				</div>
			</div>
			<div class="card col-sm-4">
				<img class="card-img-top" src="images/escape.jpg" alt="card3" width="355" height="250">
				<div class="card-body">
					<h4 class="card-title"><a href="logout">Log Out</a></h4>
					<p class="card-text">
						Go Back to Home Page.
					</p>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<style><%@include file="../css/style.css"%></style>
</body>
</html>