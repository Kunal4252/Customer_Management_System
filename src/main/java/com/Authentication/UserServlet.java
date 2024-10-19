package com.Authentication;

import jakarta.servlet.RequestDispatcher;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

public class UserServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private UserDAO userDAO = new UserDAO();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();

		switch (action) {
		case "/signup":
			signupUser(request, response);
			break;
		case "/login":
			loginUser(request, response);
			break;
		case "/logout":
			logoutUser(request, response);
			break;
		default:
			response.sendRedirect("index.jsp");
			break;
		}
	}

	private void signupUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String role = request.getParameter("role");

		SignupPojo signupPojo = new SignupPojo();
		signupPojo.setEmail(email);
		signupPojo.setUsername(username);
		signupPojo.setPassword(password);
		signupPojo.setRole(role);

		if (userDAO.signupUser(signupPojo)) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		} else {

			RequestDispatcher dispatcher = request.getRequestDispatcher("signUp.jsp");
			dispatcher.forward(request, response);
		}
	}

	private void loginUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String role = request.getParameter("role");

		LoginPojo loginPojo = new LoginPojo();
		loginPojo.setUsername(username);
		loginPojo.setPassword(password);
		loginPojo.setRole(role);

		if (userDAO.loginUser(loginPojo)) {
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
			dispatcher.forward(request, response);

		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("errorLogin.jsp");
			dispatcher.forward(request, response);
		}

	}

	private void logoutUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if (session != null) {
			session.invalidate();
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
		dispatcher.forward(request, response);

	}

}
