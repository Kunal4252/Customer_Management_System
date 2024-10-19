package com.Authentication;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	private String jdbcURL = "jdbc:mysql://localhost:3306/ERP_BI";
	private String jdbcUsername = "root";
	private String jdbcPassword = "1234";

	private static final String INSERT_USER_SQL = "INSERT INTO Employees (email, username, password, role) VALUES (?, ?, ?, ?);";
	private static final String SELECT_USER_SQL = "SELECT * FROM Employees WHERE username = ? AND password = ? AND role = ?;";

	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return connection;
	}

	public boolean signupUser(SignupPojo user) {
		boolean rowInserted = false;
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER_SQL)) {
			preparedStatement.setString(1, user.getEmail());
			preparedStatement.setString(2, user.getUsername());
			preparedStatement.setString(3, user.getPassword());
			preparedStatement.setString(4, user.getRole());
			rowInserted = preparedStatement.executeUpdate() > 0;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rowInserted;
	}

	public boolean loginUser(LoginPojo user) {
		boolean validUser = false;
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_SQL)) {
			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setString(2, user.getPassword());
			preparedStatement.setString(3, user.getRole());
			ResultSet rs = preparedStatement.executeQuery();
			if (rs.next()) {
				validUser = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return validUser;
	}
}
