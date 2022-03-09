package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.changeTypeDao;



/**
 * Servlet implementation class passwordAdd
 */
@WebServlet("/typeAddProduct")
public class typeAddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	 	request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String goodsID = request.getParameter("goodsID");
		String rName= request.getParameter("rID");
		String check =request.getParameter("check");
	
		changeTypeDao ctd = new changeTypeDao();
		
		
		Boolean result = null;
		if(check.equals("登録")) {
			result = ctd.typeInsert(goodsID,rName);
		}else if(check.equals("変更")){
			result = ctd.typeUpdate(goodsID,rName);
		}
		
		
		
		if(result) {
			RequestDispatcher rd = request.getRequestDispatcher("product_registry2.jsp");
			rd.forward(request, response);
		}
	}

}