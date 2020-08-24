<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ABC Jobs Profile</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="header-logged-in.jsp"></jsp:include>
	<div class="container">
		<div class="info">
			<span>Information</span>
		</div>
			<div class="tabla">
				<table align="center" class="table">
					<thead class="thead-dark">
						<tr></tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">First Name</th>
							<td><s:property value="#session.firstName"/></td>
						</tr>
						<tr>
							<th scope="row">Last Name</th>
							<td><s:property value="#session.lastName"/></td>
						</tr>
						<tr>
							<th scope="row">Company</th>
							<td><s:property value="#session.company"/></td>
						</tr>
						<tr>
							<th scope="row">Province</th>
							<td><s:property value="#session.province"/></td>
						</tr>
						<tr>
							<th scope="row">County</th>
							<td><s:property value="#session.country"/></td>
						</tr>
						<tr>
							<th scope="row">Email Address</th>
							<td><s:property value="#session.emailAddress"/></td>
						</tr>
					</tbody>	
				</table>
			</div>
		<div class="update">
			<a href="updateProfile" class="btn btn-primary btn-block" role="button" >Update Profile</a>
		</div>
	</div>
		<div>
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	<style><%@include file="../css/style.css"%></style>
</body>
</html>