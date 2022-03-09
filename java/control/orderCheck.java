package control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ordersSearchDao;
@WebServlet("/orderCheck")
public class orderCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	 	request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		ordersSearchDao osd = new ordersSearchDao();
		
		String dateYear = request.getParameter("orderDateYear");
		String dateMonth = request.getParameter("orderDateMonth");
		String dateDay = request.getParameter("orderDateDay");
		
		String ordersID = request.getParameter("ordersID");
		
		if(dateYear!=null) {
			ArrayList<HashMap<String, String>> maplist;
			
				maplist = osd.findOrdersForOrdersDate(dateYear,dateMonth,dateDay);
				osd.connectionClose();		
				request.setAttribute("maplist", maplist);
				RequestDispatcher rd = request.getRequestDispatcher("orderCheckResult.jsp");
				rd.forward(request, response);	
		}
		
		if(ordersID!=null&&ordersID!=""){
			HashMap<String, String> map = osd.findOrdersForUserID(ordersID);
			osd.connectionClose();
			request.setAttribute("map", map);
			RequestDispatcher rd = request.getRequestDispatcher("orderCheckResult.jsp");
			rd.forward(request, response);
		
		}else {
			request.setAttribute("null", "該当注文がありません");
			RequestDispatcher rd = request.getRequestDispatcher("orderCheckResult.jsp");
			rd.forward(request, response);
		}
	}

}
