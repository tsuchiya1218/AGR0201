package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import model.user;

/**
 * Servlet implementation class UserController
 */
@WebServlet("/UserRegistrationController")
public class UserRegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String lastname = request .getParameter("lastname");
		String firstname = request .getParameter("firstname");
		String name = lastname + " " + firstname;
		String mail = request.getParameter("mail");
		String pass = request.getParameter("pass");
		user user = new user(name,mail,pass);
		
		UserDao ud = new UserDao();
		ud.addUser(user);
		ud.connectionClose();
		
		RequestDispatcher rd = request.getRequestDispatcher("views/auth/mail_confirm.jsp");
		rd.forward(request, response);
	}

}
