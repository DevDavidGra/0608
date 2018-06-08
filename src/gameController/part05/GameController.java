package gameController.part05;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/game")
public class GameController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dis = req.getRequestDispatcher("/servletview/part05/input.jsp");
		dis.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String res = req.getParameter("gg");
		int math = (int) Math.floor((Math.random() * 10));
		
	
		if (math < 4) {
			
			switch (res) {
			case "가위":
				res+="로 비겼습니다.";
				break;
			case "바위":
				res+="로 이겼습니다.";
				break;
			case "보":
				res+="로 졌습니다.";
				break;
			}
			res= "상대방은 가위고 너는"+res;
		}else if(math < 7) {
			
			switch (res) {
			case "가위":
				res+="로 졌습니다.";
				break;
			case "바위":
				res+="로 비겼습니다.";
				break;
			case "보":
				res+="로 이겼습니다.";
				break;
			}
			res= "상대방은 바위고 너는"+res;
		}else {
			
			switch (res) {
			case "가위":
				res+="로 이겼습니다.";
				break;
			case "바위":
				res+="로 졌습니다.";
				break;
			case "보":
				res+="로 비겼습니다.";
				break;
			}
			res= "상대방은 보고 너는"+res;
		}
		
		req.setAttribute("res", res);
		RequestDispatcher dis = req.getRequestDispatcher("/servletview/part05/gameResult.jsp");
		dis.forward(req, resp);

	}

}
