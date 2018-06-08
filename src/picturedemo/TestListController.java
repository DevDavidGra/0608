package picturedemo;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/previewList")
public class TestListController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		TestDAO dao = TestDAO.getInstance();
		
		req.setAttribute("aList", dao.selectMethod());
		
		RequestDispatcher dis = req.getRequestDispatcher("pictureview/list.jsp");
		dis.forward(req, resp);
		
	}
	

}
