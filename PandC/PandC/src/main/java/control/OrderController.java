package control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class OrderController
 */
@WebServlet("/OrderController")
public class OrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String payment = request.getParameter("payment");
		String path = "";
		HttpSession session = null;
		if (payment.equals("0")) {
			path = "views/payment/payment.jsp";
			String lastname = request .getParameter("lastname");
			String firstname = request .getParameter("firstname");
			String name = lastname + " " + firstname;
			String mail = request.getParameter("mail");
			String zip = request .getParameter("zip");
			String prefectures = request .getParameter("prefectures");
			String city = request .getParameter("city");
			String town = request.getParameter("town");
			String house_number = request.getParameter("house_number");
			String building = request.getParameter("building");
			String tel = request.getParameter("tel");
			
			ArrayList<String> shipping = new ArrayList<String>();
			shipping.add(name);
			shipping.add(mail);
			shipping.add(zip);
			shipping.add(prefectures);
			shipping.add(city);
			shipping.add(town);
			shipping.add(house_number);
			shipping.add(building);
			shipping.add(tel);
			session = request.getSession();
			session.setAttribute("shipping", shipping);
		}else if(payment.equals("1")) {
			path = "views/payment/confirm.jsp";
			String card_name = request .getParameter("card_name");
			String card_number = request .getParameter("card_number");
			String expiration_year = request.getParameter("expiration_year");
			String expiration_month = request.getParameter("expiration_month");
			String cvv = request .getParameter("cvv");
			
			ArrayList<String> paymentMethod = new ArrayList<String>();
			paymentMethod.add(card_name);
			paymentMethod.add(card_number);
			paymentMethod.add(expiration_year);
			paymentMethod.add(expiration_month);
			paymentMethod.add(cvv);
			session = request.getSession();
			session.setAttribute("paymentMethod", paymentMethod);
		}
		
		response.sendRedirect(path);
	}

}
