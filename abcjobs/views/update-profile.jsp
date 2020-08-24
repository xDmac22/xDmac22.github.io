<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Profile</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="header-logged-in.jsp"></jsp:include>
	<div class="container">
		<div class="info">
			<span>Change Profile Information</span>
		</div>
		<div class="message">
			<s:if test = "i>0">
				<span style="color: green;"><s:property value="msg"/></span>
			</s:if>
			<s:else>
				<span style="color: green;"><s:property value="msg"/></span>
			</s:else>
		</div>
		<div class="updateprofileform">
			<form action="updateProf" method="post">
				<div class="form-group">
					<label for="formGroupExampleInput">First Name</label>
					<input type="text" class="form-control" id="formGroupExampleInput" name="users.firstName" value="<s:property value="#session.firstName"/>">
				</div>
				<div class="form-group">
					<label for="formGroupExampleInput">Last Name:</label>
					<input class="form-control" id="formGroupExampleInput" type="text" name="users.lastName" value="<s:property value="#session.lastName"/>">
				</div>
				<div class="form-group">
					<label for="formGroupExampleInput">Company</label>
					<input class="form-control" id="formGroupExampleInput" type="text" name="users.company" value="<s:property value="#session.company"/>">
				</div>
				<div class="form-group">
					<label for="formGroupExampleInput">Province:</label>
					<input class="form-control" id="formGroupExampleInput" type="text" name="users.province" value="<s:property value="#session.province"/>">
				</div>
				<div class="form-group">
					<label for="formGroupExampleInput">Country:</label>
					<input class="form-control" id="formGroupExampleInput" type="text" name="users.country" value="<s:property value="#session.country"/>">
				</div>
				<div class="form-group">
					<label for="formGroupExampleInput">Email Address:</label>
					<input class="form-control" id="formGroupExampleInput" type="email" name="users.emailAddress" value="<s:property value="#session.emailAddress"/>">
				</div>
				<div class="form-group">
					<label for="formGroupExampleInput">User Name:</label>
					<input class="form-control" id="formGroupExampleInput" type="text" name="users.userName" value="<s:property value="#session.userName"/>">
				</div>
				<div class="form-group">
					<label for="formGroupExampleInput">Password:</label> 
					<input class="form-control" id="formGroupExampleInput" type="password" name="users.password" required="required" value="<s:property value="#session.password"/>">
				</div>
				<div class="updatebutton">
					<button type="submit" class="btn btn-primary btn-block">Update</button>
				</div>
			</form>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<style><%@include file="../css/style.css"%></style>
</body>
</html>