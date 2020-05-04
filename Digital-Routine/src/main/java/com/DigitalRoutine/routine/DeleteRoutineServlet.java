package com.DigitalRoutine.routine;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/delete-routine")
public class DeleteRoutineServlet extends HttpServlet {

	private RoutineService routineService = new RoutineService();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String routine = request.getParameter("routine");
		routineService.deleteRoutine(new Routine(routine));
		response.sendRedirect("/routines");
	}
}
