package servletdemo.part01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/namePro")
public class ProcessController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		String name = req.getParameter("fname");
//		
//		req.setAttribute("movename", name);
		
		RequestDispatcher dis = req.getRequestDispatcher("/servletview/part01/result.jsp");
		dis.forward(req, resp);
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name = req.getParameter("fname");
		req.setAttribute("movename", name);
		
		RequestDispatcher dis = req.getRequestDispatcher("/servletview/part01/result.jsp");
		dis.forward(req, resp);
		
	}
}
