<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Logout</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	background-color: #f8f9fa;
}

.logout-container {
	text-align: center;
	background: white;
	padding: 2rem;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.logout-container h1 {
	margin-bottom: 1rem;
}

.logout-container p {
	margin-bottom: 2rem;
}
</style>
</head>
<body>
	<div class="logout-container">
		<h1>You have been logged out</h1>
		<p>Thank you for using the ERP system with BI. Click the button
			below to log in again.</p>
		<a href="login.jsp" class="btn btn-primary">Login Again</a>
	</div>

	<!-- Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script>
		window.onload = function() {
			history.pushState(null, null, location.href);
			window.onpopstate = function() {
				history.go(1);
			};
		};
	</script>
</body>
</html>
