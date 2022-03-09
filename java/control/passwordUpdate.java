package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.changePasswordDao;

/**
 * Servlet implementation class passwordAdd
 */
@WebServlet("/passwordUpdate")
public class passwordUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	 	request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String mail = request.getParameter("mail1");
		String password = request.getParameter("password1");
		changePasswordDao cpd = new changePasswordDao();
		Boolean result = cpd.passwordUpdate(password,mail);
		System.out.println(mail);
		System.out.println(password);
		System.out.println(result);
		if(result) {
			RequestDispatcher rd = request.getRequestDispatcher("passChangeFinish.jsp");
			rd.forward(request, response);
		}
	}

}
