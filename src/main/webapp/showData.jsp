<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.customer_management.*"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Data</title>
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
		<div class="mt-5">
			<h3>Customer Details</h3>

			<!-- Button to fetch and display data -->
			<form action="list" method="get">
				<button type="submit" class="btn btn-primary mb-3">Show
					Customer Data</button>
			</form>

			<!-- Button to clear all data -->
			<button type="button" class="btn btn-danger mb-3"
				onclick="clearTable()">Clear All Data</button>

			<table class="table table-striped">
				<thead>
					<tr>
						<th>Customer ID</th>
						<th>Customer Name</th>
						<th>Total Lifetime Value</th>
						<th>Average Order Value</th>
						<th>Customer Segment Category</th>

					</tr>
				</thead>
				<tbody id="customerTableBody">
					<%
					// Retrieve the list of customers from the request attribute
					List<Customer> listOfCustomers = (List<Customer>) request.getAttribute("listCustomers");
					if (listOfCustomers != null) {
						for (Customer customer : listOfCustomers) {
					%>
					<tr>
						<td><%=customer.getCustomerID()%></td>
						<td><%=customer.getCustomerName()%></td>
						<td><%=customer.getTotalLifetimeValue()%></td>
						<td><%=customer.getAverageOrderValue()%></td>
						<td><%=customer.getCustomerSegmentCategory()%></td>

					</tr>
					<%
					}
					}
					%>
				</tbody>
			</table>
		</div>
	</div>


	<!-- Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

	<script>
		function deleteRow(button) {
			// Find the row containing the button and remove it
			var row = button.closest('tr');
			row.parentNode.removeChild(row);
		}

		function clearTable() {
			// Find the table body and clear all rows
			var tableBody = document.getElementById('customerTableBody');
			tableBody.innerHTML = '';
		}
	</script>
	<script>
		function logout() {
			window.location.href = "login.jsp";
		}
	</script>
</body>
</html>