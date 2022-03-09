package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.changePasswordDao;
@WebServlet("/mailConfirm")
public class mailConfirm extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	 	request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String mail = request.getParameter("mail1");
		changePasswordDao cpd = new changePasswordDao();
		Boolean result = cpd.findUser(mail);
		cpd.connectionClose();
		HttpSession session = request.getSession();
		if ( result == true) {
		session.setAttribute("mail",mail);
			RequestDispatcher rd = request.getRequestDispatcher("mailFinish.jsp");
			rd.forward(request, response);
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("mailFail.jsp");
			rd.forward(request, response);
		}
	}

}