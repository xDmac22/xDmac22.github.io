<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ABC Jobs Log In</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<div class="row">
			<div class="col-sm-6">
				<img class="login" src="images/login.jpg" alt="login" height="450" width="450"/>
			</div>
			<div class="col-sm-6">
				<div class="card">
					<h4 class="card-title text-center mb-4 mt-1">Sign in</h4>
					<hr>
					<p class="text-success text-center">You are always welcome here!</p>
					<form action="login" class="loginuser">
						<div class="form-group">
							<label for="formGroupExampleInput">User Name</label>
							<input class="form-control" id="formGroupExampleInput" type="text" name="users.userName" required="required">
						</div>
						<div class="form-group">
							<label for="formGroupExampleInput">Password</label>
							<input class="form-control" id="formGroupExampleInput" type="password" name="users.password" required="required">
						</div>
						<button type="submit" class="btn btn-primary btn-block">Log In</button>
					</form>
				</div>
				<div class="forgot">
					<a href="retrieve">Forgot Password?</a>
				</div>
				<div class="message">
					<s:if test = "counter == 1">
						<span style="color: green;"><s:property value="msg"/></span>
					</s:if>
					<s:else>
						<span style="color: red;"><s:property value="msg"/></span>
					</s:else>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<style><%@include file="../css/style.css"%></style>
</body>
</html>