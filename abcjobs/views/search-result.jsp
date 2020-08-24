<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search User</title>
</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<body>
	<jsp:include page="header-logged-in.jsp"></jsp:include>
	<div class="container">
		<div class="info">
			<span> Search Result List</span>
		</div>
		<div class="message">
			<s:if test = "i==0">
				<span style="color: green;"><s:property value="msg"/></span>
			</s:if>
			<s:else>
				<span style="color: red;"><s:property value="msg"/></span>
			</s:else>
		</div>
		<s:if test="noData==true">
			<div class="searchtable">
				<table align="center" class="table">
					<thead class="thead-light">
						<tr>
							<th>User Name</th>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Company</th>
							<th>Country</th>
							<th>Email Address</th>
							<th>Contact User</th>
						</tr>
					</thead>
					<tbody>
						<s:iterator value="searchList">
							<tr>
								<th scope="row"><s:property value="userName"/></th>
								<td><s:property value="firstName"/></td>
								<td><s:property value="lastName"/></td>
								<td><s:property value="company"/></td>
								<td><s:property value="country"/></td>
								<td><s:property value="emailAddress"/></td>
								<td><a href="sendmessage.action?submitType=composepm&userName=<s:property value="userName"/>" class="btn btn-primary" role="button">Send Message</a></td>
							</tr>
						</s:iterator>
					</tbody>
				</table>
			</div>
		</s:if>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>