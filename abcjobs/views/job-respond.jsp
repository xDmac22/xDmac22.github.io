<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Applicant List</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="header-logged-in.jsp"></jsp:include>
	<div class="container">
		<div class="info">
			<span>Applicants List</span>
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
							<th>First Name</th>
							<th>Last Name</th>
							<th>Email Address</th>
						</tr>
					</thead>
					<tbody>
						<s:iterator value="applicants">
							<tr>
								<th scope="row"><s:property value="firstName"/></th>
								<td style="display:none;"><s:property value="prog_id"/></td>
								<td><s:property value="lastName"/></td>
								<td><s:property value="emailAddress"/></td>
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