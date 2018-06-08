package picturedemo;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/testDel")
public class TestDeleteController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		TestDAO dao = TestDAO.getInstance();
		String[] arr = req.getParameterValues("chk");
		try {
			
			dao.deleteMethod(arr);
			resp.sendRedirect("previewList");	
		}catch(NullPointerException e){
			resp.sendRedirect("previewList");
		}catch(SQLException e) {
			resp.sendRedirect("previewList");
		}
		
		
	}
}
