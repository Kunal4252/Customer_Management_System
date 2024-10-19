<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update Customer Details</title>
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

	<div class="container mt-5">
		<h2 class="mb-4">Update Customer Details</h2>
		<form action="update" method="POST">
			<div class="mb-3">
				<label for="customerID" class="form-label">Customer ID</label> <input
					type="text" class="form-control" id="customerID" name="customerID"
					placeholder="Enter Customer ID" required>
			</div>
			<div class="mb-3">
				<label for="customerName" class="form-label">Customer Name</label> <input
					type="text" class="form-control" id="customerName"
					name="customerName" placeholder="Enter Customer Name" required>
			</div>
			<div class="mb-3">
				<label for="totalLifetimeValue" class="form-label">Total
					Lifetime Value</label> <input type="number" class="form-control"
					id="totalLifetimeValue" name="totalLifetimeValue"
					placeholder="Enter Total Lifetime Value" required>
			</div>
			<div class="mb-3">
				<label for="averageOrderValue" class="form-label">Average
					Order Value</label> <input type="number" class="form-control"
					id="averageOrderValue" name="averageOrderValue"
					placeholder="Enter Average Order Value" required>
			</div>
			<div class="mb-3">
				<label for="customerSegmentCategory" class="form-label">Customer
					Segment Category</label> <input type="text" class="form-control"
					id="customerSegmentCategory" name="customerSegmentCategory"
					placeholder="Enter Customer Segment Category" required>
			</div>
			<button type="submit" class="btn btn-primary">
				<i class="bi bi-save"></i> Update
			</button>
		</form>
	</div>

	<!-- Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

	<script>
		function logout() {
			window.location.href = "login.jsp";
		}
	</script>
</body>
</html>
