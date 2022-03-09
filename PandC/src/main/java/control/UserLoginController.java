package control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;
import model.user;

/**
 * Servlet implementation class UserController
 */
@WebServlet("/UserLoginController")
public class UserLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String mail = request.getParameter("mail");
		String pass = request.getParameter("pass");
		String u_name = null;
		int login_status = 0;
		String path = "";
		
		UserDao ud = new UserDao();
		ArrayList<user> u_info = ud.login(mail, pass);
		for (user u : u_info) {
			login_status = u.getLogin_status();
		}
		if (login_status == 1) {
			path = "./views/auth/home.jsp";
			
			HttpSession session = request.getSession();
			session.setAttribute("u_info",u_info);
			session.setAttribute("login_status", login_status);
		}else if (login_status == 0) {
			path = "./login.jsp";
		}
		
		ud.connectionClose();
//		RequestDispatcher rd = request.getRequestDispatcher(path);
//		rd.forward(request, response);
		
		response.sendRedirect(path);
	}

}
