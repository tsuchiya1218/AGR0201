package control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.GoodDao;
import model.desktop;
import model.laptop;

/**
 * Servlet implementation class GoodController
 */
@WebServlet("/GoodController")
public class GoodController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String goodID = request.getParameter("goodID");
		ArrayList<desktop> desktop = null;
		ArrayList<laptop> laptop = null;
		
		HttpSession session = request.getSession();
		session.setAttribute("goodID", goodID);
		
		GoodDao gd = new GoodDao();
		if (goodID.matches("102.*")) {
			desktop = gd.findDesktop(goodID);
			session.setAttribute("desktop", desktop);
		}else if (goodID.matches("101.*")) {
			laptop = gd.findLaptop(goodID);
			session.setAttribute("laptop", laptop);
		}
		gd.connectionClose();
		
		response.sendRedirect("views/product/product_details.jsp");
	}

}
