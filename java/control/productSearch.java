package control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.productSearchDao;
import model.goods;

@WebServlet("/productSearch")
public class productSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	 	request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String categoryID = request.getParameter("categoryID");
		String  goodsName = request.getParameter("goodsName");

		String startSellPrice = request.getParameter("startSellPrice");
		String endSellPrice = request.getParameter("endSellPrice");
			
		productSearchDao psd = new productSearchDao();
		
		ArrayList<goods> list = psd.findGoodsForSearch(categoryID,goodsName,startSellPrice,endSellPrice);
		
		if(goodsName==""||startSellPrice==""||endSellPrice=="") {
			RequestDispatcher rd = request.getRequestDispatcher("productSearchFail.jsp");
			rd.forward(request, response);
		}else {
			request.setAttribute("list", list);
			RequestDispatcher rd = request.getRequestDispatcher("productSearchResult.jsp");
			rd.forward(request, response);
		}
		
		
	
	}

}
