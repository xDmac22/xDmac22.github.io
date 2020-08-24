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
	<div class="message">
			<s:if test = "i>0">
				<span style="color: green;"><s:property value="msg"/></span>
			</s:if>
			<s:else>
				<span style="color: red;"><s:property value="msg"/></span><br>
				<a href="viewThreads" class="btn btn-primary" role="button">Go Back to Thread List</a>
			</s:else>
	</div>
		<div class="list-group">
	      <h5><s:property value="t_subject"/></h5>
		  <p><s:property value="t_details"/></p>
		  <span class="badge badge-dark"><s:property value="t_username"/></span><span class="badge badge-primary"><s:property value="t_date"/></span>
		    <hr>
		    <s:if test="noData==true">
			    <s:iterator value="rlist">
				    <p class="mb-1"><s:property value="details"/></p>
				    <span class="badge badge-dark"><s:property value="poster"/></span><span class="badge badge-dark"><s:property value="date"/></span>
				    <hr>
			    </s:iterator>
		    </s:if>
		    <form action="replyThread" method="post">
				<div class="form-group">
				<textarea class="form-control" id="formGroupExampleInput" name="details" required="required" rows="2" style="width:100%; height:80px;"></textarea>
				</div>
				<input type="hidden" name="from" value="<s:property value="#session.userName"/>">
				<input type="hidden" name="to" value="<s:property value="thread_id"/>">
				<button type="submit" name="submitType" class="btn btn-primary btn-block">Reply</button>
			</form>
		</div>	
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>