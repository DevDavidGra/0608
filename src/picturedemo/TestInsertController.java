package picturedemo;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
@WebServlet("/insertMain")
public class TestInsertController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		RequestDispatcher dis= req.getRequestDispatcher("/pictureview/insert.jsp");
		dis.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MultipartRequest multi =null;
		String saveDirectory ="c:\\temp";
		File file = new File(saveDirectory);
		
		
		if(!file.isDirectory()) {
			file.mkdir();
		}
		
		int maxPostSize = 1*1024*1024*1024; 
		String encoding = "UTF-8";
		multi=new MultipartRequest(req, saveDirectory, maxPostSize, encoding, new DefaultFileRenamePolicy());
		String str = multi.getFilesystemName("filepath");
		
		TestDAO dao = TestDAO.getInstance();
		dao.insertMethod(str);
		resp.sendRedirect("previewList");
		
//		RequestDispatcher dis= req.getRequestDispatcher("/pictureview/insert.jsp");
//		dis.forward(req, resp);
		
	}
}
