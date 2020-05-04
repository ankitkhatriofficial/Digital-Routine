package com.DigitalRoutine.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet {

	private LoginUserValidationService userValidationService = new LoginUserValidationService();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/views/login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		if (userValidationService.isUserValid(username, password)) {
			request.getSession().setAttribute("name", username);
			response.sendRedirect("/routines");
		} else {
			request.setAttribute("errorMsg", "Invalid Credentials.!");
			request.getRequestDispatcher("WEB-INF/views/login.jsp").forward(request, response);
		}
	}
}
