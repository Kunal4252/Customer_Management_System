package com.customer_management;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private CustomerDAO customerDAO;

	@Override
	public void init() {
		customerDAO = new CustomerDAO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();

		try {
			switch (action) {
			case "/list":
				listCustomers(request, response);
				break;
			// Add more cases for other actions if needed
			default:
				RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
				dispatcher.forward(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}

	private void listCustomers(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		List<Customer> listCustomers = customerDAO.getAllCustomers();
		request.setAttribute("listCustomers", listCustomers);
		RequestDispatcher dispatcher = request.getRequestDispatcher("showData.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();

		try {
			switch (action) {
			case "/delete":
				deleteCustomer(request, response);
				break;
			case "/save":
				saveCustomer(request, response);
				break;
			case "/update":
				updateCustomer(request, response);
				break;
			default:
				RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
				dispatcher.forward(request, response);

				break;
			}
		} catch (SQLException | ClassNotFoundException e) {
			throw new ServletException(e);
		}
	}

	private void deleteCustomer(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException, ClassNotFoundException {
		String customerID = request.getParameter("customerID");
		DeleteCustomer customer = new DeleteCustomer();
		customer.setCustomerID(customerID);
		boolean isDeleted = customerDAO.deleteCustomer(customer);
		if (isDeleted) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
			dispatcher.forward(request, response);
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
			dispatcher.forward(request, response);
		}
	}

	private void saveCustomer(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException, ClassNotFoundException {
		String customerName = request.getParameter("CustomerName");
		double totalLifetimeValue = Double.parseDouble(request.getParameter("TotalLifetimeValue"));
		double averageOrderValue = Double.parseDouble(request.getParameter("AverageOrderValue"));
		String customerSegmentCategory = request.getParameter("CustomerSegmentCategory");
		AddCustomerData customerData = new AddCustomerData();
		customerData.setCustomerName(customerName);
		customerData.setTotalLifetimeValue(totalLifetimeValue);
		customerData.setAverageOrderValue(averageOrderValue);
		customerData.setCustomerSegmentCategory(customerSegmentCategory);
		customerDAO.saveCustomer(customerData);
		RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
		dispatcher.forward(request, response);
	}

	private void updateCustomer(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException, ClassNotFoundException {
		String customerID = request.getParameter("customerID");
		String customerName = request.getParameter("customerName");
		double totalLifetimeValue = Double.parseDouble(request.getParameter("totalLifetimeValue"));
		double averageOrderValue = Double.parseDouble(request.getParameter("averageOrderValue"));
		String customerSegmentCategory = request.getParameter("customerSegmentCategory");
		UpdateCustomer customer = new UpdateCustomer();
		customer.setCustomerID(customerID);
		customer.setCustomerName(customerName);
		customer.setTotalLifetimeValue(totalLifetimeValue);
		customer.setAverageOrderValue(averageOrderValue);
		customer.setCustomerSegmentCategory(customerSegmentCategory);
		boolean isUpdated = customerDAO.updateCustomer(customer);
		if (isUpdated) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
			dispatcher.forward(request, response);
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
			dispatcher.forward(request, response);
		}
	}
}
