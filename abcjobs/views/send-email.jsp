<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Send Bulk Email</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<nav class="navbar navbar fixed-top navbar-inverse">
			 <div class="container-fluid">
			    <div class="navbar-header">
			      <a class="navbar-brand" href="adminhome">ABC Jobs</a>
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
		<div class="card">
			<h4 class="card-title text-center mb-4 mt-1">Send Email Invitation</h4>
			<hr>
			<p class="text-success text-center">Just use comma(,) every after email address to send for multiple recipients.</p>
			<div class="message">
			<s:if test = "resp==1">
				<span style="color: green;"><s:property value="msg"/></span>
			</s:if>
			<s:else>
				<span style="color: red;"><s:property value="msg"/></span>
			</s:else>
			</div>
			<form action="sendemail" method="post">
				<div class="form-group">
					<label for="receiverEmail">Receiver</label>
					<input class="form-control" id="formGroupExampleInput" type="text" name="receiverEmail" required="required">
				</div>
				<div class="form-group">
					<label for="subject">Subject</label>
					<input class="form-control" id="formGroupExampleInput" type="text" name="subject" required="required">
				</div>
				<div class="form-group">
					<label for="message">Message</label>
					<textarea class="form-control" id="formGroupExampleInput" name="message" required="required" rows="2" style="width:100%; height:300px;"></textarea>
				</div>
				<input type="hidden" name="username" value="<s:property value="username"/>">
				<button type="submit" name="submitType" class="btn btn-primary btn-block">Send Email</button>
			</form>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>