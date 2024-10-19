<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>

<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom CSS -->
<style>
.container {
	margin-top: 50px;
}
</style>
</head>
<body>
<body>
	<div class="container">
		<h2>Login</h2>
		<form id="loginForm" action="login" method="post"
			onsubmit="return validateForm()">
			<div class="form-group">
				<label for="username">Username</label> <input type="text"
					class="form-control" id="username" name="username" required>
			</div>
			<div class="form-group">
				<label for="password">Password</label> <input type="password"
					class="form-control" id="password" name="password" required>
			</div>
			<div class="form-group">
				<label for="role">Role</label> <select class="form-control"
					id="role" name="role" required>
					<option value="" disabled selected>Select Role</option>
					<option value="Admin">Admin</option>
					<option value="Inventory Manager">Inventory Manager</option>
					<option value="Sales Manager">Sales Manager</option>
					<option value="Product Manager">Product Manager</option>
					<option value="Customer Service Representative">Customer
						Service Representative</option>


				</select>
			</div>
			<button type="submit" class="btn btn-primary">Login</button>
		</form>
		<p>
			Don't have an account? <a href="signUp.jsp">Sign Up</a>
		</p>
	</div>

	<!-- Bootstrap JS and jQuery -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

	<!-- JavaScript validation -->
	<script>
		function validateForm() {
			var username = document.getElementById("username").value.trim();
			var password = document.getElementById("password").value.trim();
			var role = document.getElementById("role").value.trim();

			if (username === "" || password === "" || role === "") {
				alert("Please fill in all fields.");
				return false;
			}
			return true;
		}
	</script>
</body>
</body>

</html>