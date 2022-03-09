package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.productDeleteDao;

@WebServlet("/productDelete")
public class productDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	 	request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String goodsID = request.getParameter("goodsID");
		
		productDeleteDao pdd = new productDeleteDao();
		Boolean result = pdd.deleteGoods(goodsID);
		
		if(result) {
			RequestDispatcher rd = request.getRequestDispatcher("productSearch.jsp");
			rd.forward(request, response);
		}
	
	}

}
