<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.customer_management.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Add Customer Details</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
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
						aria-haspopup="true" aria-expanded="false"> Account </a>
						<div class="dropdown-menu"
							aria-labelledby="navbarDropdownMenuLink">
							<a class="dropdown-item" href="signUp.jsp">SignUp</a> <a
								class="dropdown-item" href="login.jsp">Login</a>

						</div></li>
					<li class="nav-item"><a class="nav-link" href="logout.jsp">Logout</a></li>
				</ul>

			</div>
		</div>
	</nav>
	<div class="container">
		<h2 class="mt-5">Add Customer Data</h2>
		<form action="save" method="post" class="mt-4">
			<div class="form-group">
				<label for="CustomerName">Customer Name</label> <input type="text"
					class="form-control" id="CustomerName" name="CustomerName"
					placeholder="Enter customer name" required>
			</div>
			<div class="form-group">
				<label for="TotalLifetimeValue">Total Lifetime Value</label> <input
					type="number" step="0.01" class="form-control"
					id="TotalLifetimeValue" name="TotalLifetimeValue"
					placeholder="Enter total lifetime value" required>
			</div>
			<div class="form-group">
				<label for="AverageOrderValue">Average Order Value</label> <input
					type="number" step="0.01" class="form-control"
					id="AverageOrderValue" name="AverageOrderValue"
					placeholder="Enter average order value" required>
			</div>
			<div class="form-group">
				<label for="CustomerSegmentCategory">Customer Segment
					Category</label> <input type="text" class="form-control"
					id="CustomerSegmentCategory" name="CustomerSegmentCategory"
					placeholder="Enter customer segment category" required>
			</div>
			<button type="submit" class="btn btn-primary">Save</button>
		</form>
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
