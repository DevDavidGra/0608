package ajaxtest;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addajax")
public class AddAjax extends HttpServlet {
	String[] arr = {"json","aajax","xml","spring","jsp","angular","react","java","html","css"};
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String temp="{";
		for(int i=0; i<9; i++) {
			
			temp+="{\"name\":\""+arr[i]+"\"}";
			if(i<8) {
				temp+=",";
			}else {
				temp+="}";
			}
			
		}
		resp.getWriter().print(temp);
		resp.getWriter().flush();
		
		
	}

}
