package com.DigitalRoutine.routine;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/routines")
public class ListRoutineServlet extends HttpServlet {

	private RoutineService routineService = new RoutineService();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("routines", routineService.getRoutines());
		request.getRequestDispatcher("WEB-INF/views/routine.jsp").forward(request, response);
	}
}
