<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ABC Jobs</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<div class="jumbotron">
			<h1>Welcome to ABC Jobs!</h1>
			<p>Interact, Connect and get Hired.</p>
			<p>Discuss trend technologies with professional developers and Find secured jobs HERE!</p>
		</div>
		<div class="row">
			<div class="card col-sm-4">
				<img class="card-img-top" src="images/hired2.jpg" alt="card1" width="355" height="250">
				<div class="card-body">
					<h4 class="card-title">Apply Now!</h4>
					<p class="card-text">
						Browse on job lists posted by others developers.
					</p>
				</div>
			</div>
			<div class="card col-sm-4">
				<img class="card-img-top" src="images/programming2.jpg" alt="card2" width="355" height="250">
				<div class="card-body">
					<h4 class="card-title">Ease at Code</h4>
					<p class="card-text">
						Find a solution to your coding problem encountered by other members.
					</p>
				</div>
			</div>
			<div class="card col-sm-4">
				<img class="card-img-top" src="images/discuss2.jpg" alt="card3" width="355" height="250">
				<div class="card-body">
					<h4 class="card-title">Collaborate</h4>
					<p class="card-text">
						Interact with common tech peers.
					</p>
				</div>
			</div>
		</div>
	</div>	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>