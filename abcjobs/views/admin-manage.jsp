<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manage Users</title>
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
			      <a class="navbar-brand" href="adminhome">ABC Jobs</a>
			    </div>
			    <ul class="nav navbar-nav">
			      <li><a href="administer">Manage Users</a></li>
			      <li><a >Send Bulk Email</a></li>
			      <li><a href="logout">Log Out</a></li>
			    </ul>
			 </div>
		</nav>
	</div>
	<div class="container">
		<div class="info">
			<span>Manage Users</span>
		</div>
	</div>
	<div class=container>
		<div class="deletemessage">
			<s:if test = "counter==1">
				<span style="color: green;"><s:property value="msg"/></span>
			</s:if>
			<s:else>
				<span style="color: green;"><s:property value="msg"/></span>
			</s:else>
		</div>
	</div>
	<div class="container">
		<div id="managertable">
		<s:if test="noData==true">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>User Id</th>
						<th>User Name</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Country</th>
						<th>Email Address</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="userList">
						<tr>
							<th scope="row"><s:property value="prog_id"/></th>
							<td><s:property value="userName"/></td>
							<td><s:property value="firstName"/></td>
							<td><s:property value="lastName"/></td>
							<td><s:property value="country"/></td>
							<td><s:property value="emailAddress"/></td>
							<td><a href="updateUserData.action?submitType=updatedata&userName=<s:property value="userName"/>" class="btn btn-primary" role="button">Update</a><a href="deleteUser.action?userName=<s:property value="userName"/>" class="btn btn-danger" role="button">Delete</a></td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
		</s:if>
		</div>
	</div>
	<br>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>