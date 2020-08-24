<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Post New Job</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="header-logged-in.jsp"></jsp:include>
	<div class="container">
		<div class="card">
			<h4 class="card-title text-center mb-4 mt-1">Post New Job</h4>
			<hr>
			<div class="message">
				<s:if test = "i>0">
					<span style="color: green;"><s:property value="msg"/></span>
				</s:if>
				<s:else>
					<span style="color: red;"><s:property value="msg"/></span>
				</s:else>
			</div>
			<form action="postnewjob" method="post">
				<div class="form-group">
					<label>Job Profession</label>
					<input class="form-control" id="formGroupExampleInput" name="job_prof">
					<label for="message">Job Description and Details</label>
					<textarea class="form-control" id="formGroupExampleInput" name="job_desc" required="required" rows="2" style="width:100%; height:300px;"></textarea>
					<label>Job Salary</label>
					<input class="form-control" id="formGroupExampleInput" name="job_sal">
				</div>
				<input type="hidden" name="prog_id" value="<s:property value="#session.prog_id"/>">
				<button type="submit" name="submitType" class="btn btn-primary btn-block">Post New Job</button>
			</form>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>