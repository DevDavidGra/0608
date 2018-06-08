package sessiondemo;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		RequestDispatcher dis = req.getRequestDispatcher("/sessionview/login.jsp");
		dis.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String fid = req.getParameter("fid");
		String fpass = req.getParameter("fpass");
		
		
		MemDTO dto = new MemDTO();
		dto.setFid(fid);
		dto.setFpass(fpass);
		
		MemDAO dao = MemDAO.getInstance();
		int cnt = dao.memCheck(dto);
		
		//session scope에 접근하기 위해 세션을 생성해줘야 한다.
		HttpSession session = req.getSession();
		if(cnt==1) {
			
			session.setAttribute("chk", fid);
			
			//마우스나 키보드로 아무것도 안했을때 
			session.setMaxInactiveInterval(30*60);
			
		}else {
			req.setAttribute("chk", fid);
		}
		
		RequestDispatcher dis= req.getRequestDispatcher("/sessionview/login.jsp");
		dis.forward(req, resp);
	}
}
