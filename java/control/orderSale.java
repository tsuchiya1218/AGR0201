package control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.orderSaleDao;
import model.orders;

@WebServlet("/orderSale")
public class orderSale extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	 	request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String year = request.getParameter("years");
		String month = request.getParameter("months");
			
		orderSaleDao osd = new orderSaleDao();
		ArrayList<orders> list = osd.findAllOrderSale(year, month);
		
		request.setAttribute("list", list);
		RequestDispatcher rd = request.getRequestDispatcher("orderSaleResult.jsp");
		rd.forward(request, response);
		
	
	}

}


