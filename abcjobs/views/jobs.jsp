<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Jobs</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="header-logged-in.jsp"></jsp:include>
	<div class="container">
		<a style="margin-right: 15px;" href="showMyJobPost.action?userID=<s:property value="#session.prog_id"/>" class="btn btn-primary" role="button">My Job Posts</a><a href="postNewJobForm" class="btn btn-primary" role="button">Post New Job</a>
		<div class="jobs">
			<div class="message">
				<s:if test = "i>0">
					<span style="color: green;"><s:property value="msg"/></span>
				</s:if>
				<s:else>
					<span style="color: red;"><s:property value="msg"/></span>
				</s:else>
			</div>
			<s:if test="noData==true">
			<s:iterator value="jobList">
				<div id="accordion">
					<h3><s:property value="job_prof"/></h3>
					<div class="insidejob">
						<form class="applyform"action="applyJob" method="post">
							<input type="hidden" name="job_orig" value="<s:property value="job_id"/>">
							<input type="hidden" name="prog_id" value="<s:property value="#session.prog_id"/>">
							<input type="hidden" name="fname" value="<s:property value="#session.firstName"/>">
							<input type="hidden" name="email" value="<s:property value="#session.emailAddress"/>">
							<input type="hidden" name="lname" value="<s:property value="#session.lastName"/>">
						
						<span style="font-weight:bold;">Job Description</span><br>
						<s:property value="job_desc"/><br>
						<span style="font-weight:bold;">Job Salary</span><br>
						&#8369;<s:property value="job_sal"/><br>
						<span style="font-weight:bold;">Post Date</span><br>
						<s:property value="job_postdate"/><br>
						<button type="submit" name="submitType" class="btn btn-primary btn-block">Apply</button>
						</form>
						<hr>
					</div>
				</div>	
			</s:iterator>
			</s:if>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>