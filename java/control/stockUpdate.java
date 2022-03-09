package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.changeStockDao;

/**
 * Servlet implementation class passwordAdd
 */
@WebServlet("/stockUpdate")
public class stockUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	 	request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String goodID = request.getParameter("goodID");
		String stock = request.getParameter("stock");
		changeStockDao csd = new changeStockDao();
		Boolean result = csd.stockUpdate(goodID,stock);

		System.out.println(result);
		if(result) {
			RequestDispatcher rd = request.getRequestDispatcher("stockSearch.jsp");
			rd.forward(request, response);
		}
	}

}