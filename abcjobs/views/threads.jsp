<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Threads</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="header-logged-in.jsp"></jsp:include>
	<div class="container">
		<a style="margin-right: 15px;" href="postThreadForm" class="btn btn-primary" role="button">Post New Thread</a>
		<div class="info">
			<span> Threads</span>
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
							<th>Posted By</th>
							<th>Subject</th>
							<th>Date and Time</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<s:iterator value="tlist">
							<tr>
								<th scope="row"><s:property value="poster"/></th>
								<td style="display:none;"><s:property value="thread_id"/></td>
								<td><s:property value="subject"/></td>
								<td><s:property value="date"/></td>
								<td><a href="focusThread.action?thread_id=<s:property value="thread_id"/>" class="btn btn-primary" role="button">View</a></td>
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