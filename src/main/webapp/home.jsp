<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Management</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
/* Custom styles */
.navbar-brand {
	font-weight: bold;
}

.nav-item {
	margin-right: 10px;
}

.dropdown-menu {
	border: none;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.dropdown-item {
	color: #333;
}

.dropdown-item:hover {
	background-color: #f8f9fa;
}
</style>
</head>
<body>
	<%
	HttpSession session1 = request.getSession(false);
	if (session1 == null || session1.getAttribute("username") == null) {
		RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
		dispatcher.forward(request, response);
		return;
	}
	%>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container">
			<a class="navbar-brand" href="#">Customer Management</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link" href="home.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="list">Show
							Data</a></li>
					<li class="nav-item"><a class="nav-link"
						href="addCustomerData.jsp">Add Customer</a></li>
					<li class="nav-item"><a class="nav-link"
						href="updateCustomerData.jsp">Update Customer</a></li>
					<li class="nav-item"><a class="nav-link"
						href="deleteCustomerData.jsp">Delete Customer</a></li>
				</ul>
				<ul class="navbar-nav ml-auto">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#"
						id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">Account</a>
						<div class="dropdown-menu"
							aria-labelledby="navbarDropdownMenuLink">
							<a class="dropdown-item" href="signUp.jsp">Sign Up</a> <a
								class="dropdown-item" href="login.jsp">Login</a>
						</div></li>
					<li class="nav-item"><a class="nav-link" href="logout.jsp">Logout</a></li>
				</ul>

			</div>
		</div>
	</nav>

	<div class="container mt-4">
		<div class="jumbotron">
			<h1 class="display-4">Welcome to the ERP Home Page</h1>
			<p class="lead">This is the Customer Management System.</p>
			<hr class="my-4">
			<p>Manage your customer data efficiently and leverage powerful BI
				tools to gain insights.</p>

		</div>
	</div>

	<!-- Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script>
		
	</script>

</body>
</html>
