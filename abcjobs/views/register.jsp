<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ABC Jobs Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<div class="info">
			<span>Registration Form</span>
		</div>
		<div class="message">
			<s:if test = "res>0">
				<span style="color: green;"><s:property value="msg"/></span>
			</s:if>
			<s:else>
				<span style="color: green"><s:property value="msg"/></span>
			</s:else>
		</div>
		<div>
			<form action="register" method="post">
				<div class="form-group">
					<label for="formGroupExampleInput">First Name</label>
					<input class="form-control" id="formGroupExampleInput" type="text" name="users.firstName" required="required">
				</div>
				<div class="form-group">
					<label for="formGroupExampleInput">Last Name</label>
					<input class="form-control" id="formGroupExampleInput" type="text" name="users.lastName" required="required">
				</div>
				<div class="form-group">
					<label for="formGroupExampleInput">Company</label>
					<input class="form-control" id="formGroupExampleInput" type="text" name="users.company">
				</div>
				<div class="form-group">
					<label for="formGroupExampleInput">Province</label>
					<input class="form-control" id="formGroupExampleInput" type="text" name="users.province">
				</div>
				<div class="form-group">
					<label for="formGroupExampleInput">Country</label>
					<input class="form-control" id="formGroupExampleInput" type="text" name="users.country">
				</div>
				<div class="form-group">
					<label for="formGroupExampleInput">Email Address</label>
					<input class="form-control" id="formGroupExampleInput" type="text" name="users.emailAddress" required="required">
				</div>
				<div class="form-group">
					<label for="formGroupExampleInput">User Name</label> <span style="color: red;">Note: Username cannot be change on profile.</span>
					<input class="form-control" id="formGroupExampleInput" type="text" name="users.userName" required="required">
				</div>
				<div class="form-group">
					<label for="formGroupExampleInput">Password</label>
					<input class="form-control" id="formGroupExampleInput" type="password" name="users.password" required="required">
				</div>
				<div>
					<button type="submit" class="btn btn-primary btn-block">Register</button>
				</div>
			</form>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<style><%@include file="../css/style.css"%></style>
</body>
</html>