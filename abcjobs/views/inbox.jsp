<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Messages</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="header-logged-in.jsp"></jsp:include>
	<div class="container">
		<div class="info">
			<span>Inbox</span>
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
							<th>Sender</th>
							<th>Message</th>
							<th>Date and Time</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<s:iterator value="messageList">
							<tr>
								<th scope="row"><s:property value="sender"/></th>
								<td style="display: none;"><s:property value="message_id"/></td>
								<td class="ellipsis"><span><s:property value="message"/></span></td>
								<td><s:property value="date"/></td>
								<td><a href="viewMessages.action?message_id=<s:property value="message_id"/>" class="btn btn-primary" role="button">View</a></td>
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