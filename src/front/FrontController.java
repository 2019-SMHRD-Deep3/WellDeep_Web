package front;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.JoinCon;
import com.controller.LoginCon;
import com.controller.LogoutCon;
import com.controller.UpdateUserCon;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("*.do")
public class FrontController extends HttpServlet {
private static final long serialVersionUID = 1L;
	
	private HashMap<String, ICommand> map = new HashMap<String, ICommand>();
	
	private void putData() {
		map.put("JoinService.do", new JoinCon());
		map.put("LoginService.do", new LoginCon());
		map.put("LogoutService.do", new LogoutCon());
		map.put("UpdateUserService.do", new UpdateUserCon());
		//map.put("UpdateManagerService.do", new UpdateManagerCon());
		//map.put("InsertPostService.do", new InsertPostCon());
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		System.out.println("FrontController ����!");
//		System.out.println(request.getParameter("detail"));
		String requestURI = request.getRequestURI();
//		System.out.println(requestURI);
		String contextPath = request.getContextPath();
//		System.out.println(contextPath);
		String resultURL = requestURI.substring(contextPath.length() + 1);
		String moveURL = null;
		putData();
		ICommand iCommand = map.get(resultURL);
		moveURL = iCommand.execute(request, response);
		
		if(resultURL.equals("UpdateUserService.do")) {
			System.out.println("�� �����ʹ� �������� "+moveURL);
			response.getWriter().print(moveURL);
			return ;
		}
//		if(resultURL.equals("ReadReply.do")) {
//			response.getWriter().print(moveURL);
//			return;
//		}
//		if(resultURL.equals("InsertReply.do")) {
//			response.getWriter().print(moveURL);
//			return;
//		}
		if(!(moveURL==null))
			response.sendRedirect(moveURL);
	}
}