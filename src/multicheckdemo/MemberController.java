package multicheckdemo;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/multi")
public class MemberController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MemberDAO dao = MemberDAO.getInstance();
		req.setAttribute("res", dao.search());
		RequestDispatcher dis = req.getRequestDispatcher("/multicheckview/list.jsp");
		dis.forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String chk[] = req.getParameterValues("sel");
		for(String i : chk) {
			System.out.println(i);
		}
		
		MemberDAO dao = MemberDAO.getInstance();
		req.setAttribute("res", dao.search());
		RequestDispatcher dis = req.getRequestDispatcher("/multicheckview/list.jsp");
		dis.forward(req, resp);
	}
	
	
}
