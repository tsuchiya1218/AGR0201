package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;
import model.user;

/**
 * Servlet implementation class ProfileController
 */
@WebServlet("/ProfileController")
public class ProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String form = request.getParameter("form");
		
		if(form.equals("1")) {
			String lastname = request .getParameter("lastName");
			String firstname = request .getParameter("firstName");
			String name = lastname + " " + firstname;
			String mail1 = request.getParameter("mail");
			String tel = request.getParameter("tel");
			String mail2 = null;
			
			HttpSession session = request.getSession();
			@SuppressWarnings("unchecked")
			ArrayList<user> user = (ArrayList<user>) session.getAttribute("u_info");
			for (user u : user) {	
				mail2 = u.getUserMail();
				u.setUserName(name);
				u.setUserMail(mail1);
				u.setTel(tel);
			}
			
			UserDao ud = new UserDao();
			ud.changeProfile(name,mail1,tel,mail2);
			ud.connectionClose();
		}else if(form.equals("2")) {
			String zip = request .getParameter("zip");
			String prefectures = request .getParameter("prefectures");
			String city = request .getParameter("city");
			String town = request.getParameter("town");
			String house_number = request.getParameter("house_number");
			String building = request.getParameter("building");
			String addr = prefectures + "," + city + "," + town + "," + house_number + "," + building;
			String mail = null;
			
			HttpSession session = request.getSession();
			@SuppressWarnings("unchecked")
			ArrayList<user> user = (ArrayList<user>) session.getAttribute("u_info");
			for (user u : user) {
				mail = u.getUserMail();
				u.setZip(zip);
				u.setAddress(addr);
			}
			PrintWriter out = response.getWriter();
			out.print(addr + " " + zip);
			
			UserDao ud = new UserDao();
			ud.changeAddr(zip, addr, mail);
			ud.connectionClose();
		}else if (form.equals("3")) {
			String payment = request .getParameter("payment");
			String card_name = request .getParameter("card_name");
			String card_number = request .getParameter("card_number");
			String expiration_year = request.getParameter("expiration_year");
			String expiration_month = request.getParameter("expiration_month");
			String cvv = request .getParameter("cvv");
			String userID = null;
			
			HttpSession session = request.getSession();
			@SuppressWarnings("unchecked")
			ArrayList<user> user = (ArrayList<user>) session.getAttribute("u_info");
			for (user u : user) {
				userID = u.getUserID();
			}
			UserDao ud = new UserDao();
			ud.changePayment(card_name, userID, card_number, expiration_year, expiration_month, cvv);
			ud.connectionClose();
		}
		
		response.sendRedirect("/PandC/views/auth/profile.jsp");
	}

}
