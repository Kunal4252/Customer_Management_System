<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<h2 class="text-center">Sign Up</h2>
				<form action="signup" method="post">
					<div class="form-group">
						<label for="email">Email</label> <input type="email"
							class="form-control" id="email" name="email" required>
					</div>
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
					<button type="submit" class="btn btn-primary btn-block">Sign
						Up</button>
				</form>

				<div class="text-center mt-3">
					<p>
						Already have an account? <a href="login.jsp">Login here</a>
					</p>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap JS and dependencies -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
