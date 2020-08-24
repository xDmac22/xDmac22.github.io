<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Read Message</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="header-logged-in.jsp"></jsp:include>
	<div class="container">
		<form action="viewMessage" method="post">
			<div class="form-group">
				<label for="from">Sender</label>
				<input class="form-control" id="formGroupExampleInput" type="text" name="sender" readonly value="<s:property value="pm_sender"/>">
				<label for="subject">Date and Time</label>
				<input class="form-control" id="formGroupExampleInput" type="text" name="date" readonly value="<s:property value="pm_date"/>">
				<label for="message">Message</label>
				<textarea class="form-control" id="formGroupExampleInput" name="message" readonly rows="2" style="width:100%; height:300px;"><s:property value="pm_message"/></textarea>
			</div>
			<div class="replybutton">
				<a href="sendmessage.action?submitType=composepm&userName=<s:property value="pm_sender"/>" class="btn btn-primary" role="button">Reply</a>
			</div>
		</form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>