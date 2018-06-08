package servletdemo.part02;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omg.PortableServer.REQUEST_PROCESSING_POLICY_ID;
@WebServlet("/loginPro")
public class loginProController extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		 
		String fid = req.getParameter("fid");
		String fpass = req.getParameter("fpass");
		
		System.out.println(fid+":"+fpass);
		
		MemberDTO dto = new MemberDTO();
		dto.setFid(fid);
		dto.setFpass(fpass);
		
		req.setAttribute("member", dto);
		
		RequestDispatcher dis = req.getRequestDispatcher("/servletview/part02/result.jsp");
		dis.forward(req, resp);
	
	}
	// 중요한건 일단 폼 자체에 서브밋 할때 폼에 name속성이 붙여야만 그 하위 name속성을 읽을 수 있슴.. 
	// 그리고 getparameter 는 폼의 인풋 name값을 읽어옴..
	// 마지막으로 리로딩이 안되거나 다운된다 싶으면.. 서버 다 끄고 다시 깔어...;;
	
	
}// end class
