package control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DaoController;
import dao.GoodDao;
import model.good;
import model.maker;

/**
 * Servlet implementation class HomeController
 */
@WebServlet("/HomeController")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int login_status = 0;
		
		DaoController dc = new DaoController();
		ArrayList<maker> mlist = dc.findMaker();
		dc.connectionClose();
		
		GoodDao gd = new GoodDao();
		ArrayList<good> glist = gd.findAll();
		gd.connectionClose();
		
		HttpSession session = request.getSession();
		session.setAttribute("makerlist",mlist);
		session.setAttribute("goodlist", glist);
		session.setAttribute("login_status", login_status);
		
		response.sendRedirect("index.jsp");
	}

}
//		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
//		rd.forward(request, response);

