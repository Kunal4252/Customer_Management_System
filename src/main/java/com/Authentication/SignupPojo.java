package com.Authentication;

public class SignupPojo {
	private String email;
	private String username;
	private String password;
	private String role;

	// Constructor
	public SignupPojo() {
	}

	// Getters and Setters
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "SignupPojo{" + "email='" + email + '\'' + ", username='" + username + '\'' + ", password='" + password
				+ '\'' + ", role='" + role + '\'' + '}';
	}
}
