<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<title>ABC Job Portal</title>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="header-logged-in.jsp"></jsp:include>
		<div class="container">
			<div class="message">
				<s:if test = "i>0">
					<span style="color: red;"><s:property value="msg"/></span>
				</s:if>
				<s:else>
					<span style="color: green;"><s:property value="msg"/></span>
				</s:else>
			</div>
		</div>
		<div class="container">
		<div class="row">
			<div class="card col-sm-4">
				<img class="card-img-top" src="../images/hack.jpg" alt="card1" width="355" height="250">
				<div class="card-body">
					<h4 class="card-title">Hackathon</h4>
					<p class="card-text">
						Join now for online hackathon.!
					</p>
				</div>
			</div>
			<div class="card col-sm-4">
				<img class="card-img-top" src="../images/mask.jpg" alt="card2" width="355" height="250">
				<div class="card-body">
					<h4 class="card-title">BLM</h4>
					<p class="card-text">
						Anonymous hacks some government websites.
					</p>
				</div>
			</div>
				<div class="card col-sm-4">
					<img class="card-img-top" src="../images/online.jpg" alt="card3" width="355" height="250">
					<div class="card-body">
						<h4 class="card-title">Things to do Develop Coding</h4>
						<p class="card-text">
							See daily to-dos of a successfull programmer.
						</p>
					</div>
				</div>
			</div>
		</div>
		<div id="carousel" class="container">
	 		<div id="myCarousel" class="carousel slide" data-ride="carousel">
	   			<!-- Indicators -->
	   			<ol class="carousel-indicators">
			      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			      <li data-target="#myCarousel" data-slide-to="1"></li>
			      <li data-target="#myCarousel" data-slide-to="2"></li>
			    </ol>
	
			    <!-- Wrapper for slides -->
			    <div class="carousel-inner">
			      <div class="item active">
			        <img src="../images/laptop.jpg" alt="Connect" style="width:100%; height:50%;" class="rounded">
			        <div class="carousel-caption">
	          			<h3>Learn</h3>
	          			<p>Get to know latest technologies with experts.</p>
	        		</div>
			      </div>
			      
			      <div class="item">
			        <img src="../images/hand.jpg" alt="Hired" style="width:100%; height:50%;" class="rounded">
			        <div class="carousel-caption">
	          			<h3>Hired</h3>
	          			<p>Get your dream job and achieve your dreams.</p>
	        		</div>
			      </div>
			      
			      <div class="item">
	      			<img src="../images/community.jpg" alt="Community" style="width:100%; height:50%;" class="rounded">
	      			<div class="carousel-caption">
	          			<h3>Interact</h3>
	          			<p>Discuss and participate on online talks.</p>
	        		</div>
	   			 </div>
			    </div>
	
				<!-- Left and right controls -->
				 <a class="left carousel-control" href="#myCarousel" data-slide="prev">
				      <span class="glyphicon glyphicon-chevron-left"></span>
				      <span class="sr-only">Previous</span>
				 </a>
				 <a class="right carousel-control" href="#myCarousel" data-slide="next">
				  	<span class="glyphicon glyphicon-chevron-right"></span>
				    <span class="sr-only">Next</span>
				 </a>
			</div>
		</div>
		<div>
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
		<style><%@include file="../css/style.css"%></style>
</body>
</html>
