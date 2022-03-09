package control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.productSearchAllDao;
import model.goods;

@WebServlet("/productSearchAll")
public class productSearchAll extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	 	request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
	
			
		productSearchAllDao psd = new productSearchAllDao();
		
		ArrayList<goods> list = psd.findGoodsForSearchAll();
		
		
		request.setAttribute("list", list);
		RequestDispatcher rd = request.getRequestDispatcher("productSearchResult.jsp");
		rd.forward(request, response);
		
		
	}

}
