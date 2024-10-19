package com.customer_management;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerDAO {
	private static final String URL = "jdbc:mysql://localhost:3306/ERP_BI";
	private static final String USER = "root";
	private static final String PASSWORD = "1234";

	public void saveCustomer(AddCustomerData customer) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");

		try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD)) {
			String sql = "INSERT INTO Customer (CustomerName, TotalLifetimeValue, AverageOrderValue, CustomerSegmentCategory) VALUES (?, ?, ?, ?)";
			try (PreparedStatement statement = connection.prepareStatement(sql)) {
				statement.setString(1, customer.getCustomerName());
				statement.setDouble(2, customer.getTotalLifetimeValue());
				statement.setDouble(3, customer.getAverageOrderValue());
				statement.setString(4, customer.getCustomerSegmentCategory());
				statement.executeUpdate();
			}
		}
	}

	public boolean updateCustomer(UpdateCustomer customer) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");

		try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD)) {
			String sql = "UPDATE Customer SET CustomerName=?, TotalLifetimeValue=?, AverageOrderValue=?, CustomerSegmentCategory=? WHERE CustomerID=?";
			try (PreparedStatement statement = connection.prepareStatement(sql)) {
				statement.setString(1, customer.getCustomerName());
				statement.setDouble(2, customer.getTotalLifetimeValue());
				statement.setDouble(3, customer.getAverageOrderValue());
				statement.setString(4, customer.getCustomerSegmentCategory());
				statement.setString(5, customer.getCustomerID());
				int rowsUpdated = statement.executeUpdate();
				return rowsUpdated > 0;
			}
		}
	}

	public boolean deleteCustomer(DeleteCustomer customer) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");

		try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD)) {
			String sql = "DELETE FROM Customer WHERE CustomerID=?";
			try (PreparedStatement statement = connection.prepareStatement(sql)) {
				statement.setString(1, customer.getCustomerID());
				int rowsDeleted = statement.executeUpdate();
				return rowsDeleted > 0; // Return true if a row was deleted, false otherwise
			}
		}
	}

	public Customer getCustomerById(String customerId) {
		Customer customer = null;
		try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
				PreparedStatement stmt = conn.prepareStatement("SELECT * FROM Customer WHERE CustomerID = ?")) {
			stmt.setString(1, customerId);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				customer = new Customer();
				customer.setCustomerID(rs.getString("CustomerID"));
				customer.setCustomerName(rs.getString("CustomerName"));
				customer.setTotalLifetimeValue(rs.getDouble("TotalLifetimeValue"));
				customer.setAverageOrderValue(rs.getDouble("AverageOrderValue"));
				customer.setCustomerSegmentCategory(rs.getString("CustomerSegmentCategory"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return customer;
	}

	public List<Customer> getAllCustomers() {
		List<Customer> customers = new ArrayList<>();

		String sql = "SELECT * FROM Customer";

		try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD);
				PreparedStatement stmt = conn.prepareStatement(sql)) {

			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				Customer customer = new Customer();
				customer.setCustomerID(rs.getString("CustomerID"));
				customer.setCustomerName(rs.getString("CustomerName"));
				customer.setTotalLifetimeValue(rs.getDouble("TotalLifetimeValue"));
				customer.setAverageOrderValue(rs.getDouble("AverageOrderValue"));
				customer.setCustomerSegmentCategory(rs.getString("CustomerSegmentCategory"));
				customers.add(customer);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return customers;
	}
}
