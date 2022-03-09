package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ordersDeleteDao;

@WebServlet("/orderDelete")
public class orderDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	 	request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String ordersID = request.getParameter("ordersID");
		ordersID = "30301";

		ordersDeleteDao odd = new ordersDeleteDao();
		Boolean result = odd.deleteOrder(ordersID);
		
		if(result) {
			RequestDispatcher rd = request.getRequestDispatcher("orderCheck.jsp");
			rd.forward(request, response);
		}
	
	}

}
