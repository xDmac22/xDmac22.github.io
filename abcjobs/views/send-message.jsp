<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Send Message</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="header-logged-in.jsp"></jsp:include>
	<div class="container">
		<div class="card">
			<h4 class="card-title text-center mb-4 mt-1">Send Message</h4>
			<hr>
			<div class="message">
				<s:if test = "i>0">
					<span style="color: green;"><s:property value="msg"/></span>
				</s:if>
				<s:else>
					<span style="color: red;"><s:property value="msg"/></span>
				</s:else>
			</div>
			<form action="sendmessage" method="post">
				<div class="form-group">
					<label for="message">Message</label>
					<textarea class="form-control" id="formGroupExampleInput" name="message" required="required" rows="2" style="width:100%; height:300px;"></textarea>
				</div>
				<input type="hidden" name="from" value="<s:property value="#session.userName"/>">
				<input type="hidden" name="to" value="<s:property value="userName"/>">
				<button type="submit" name="submitType" class="btn btn-primary btn-block">Send Message</button>
			</form>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>