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
import model.good;

/**
 * Servlet implementation class serach_goods
 */
@WebServlet("/SearchController")
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String keyword = request.getParameter("keyword");
		GoodDao gd = new GoodDao();
		ArrayList<good> glist = gd.findGood(keyword);
		gd.connectionClose();
		
		HttpSession session = request.getSession();
		session.setAttribute("searchlist", glist);
		
		response.sendRedirect("views/product/product_list.jsp");
	}

}
