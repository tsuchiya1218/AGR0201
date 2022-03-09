package control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CartDao;
import model.cart;

/**
 * Servlet implementation class CartController
 */
@WebServlet("/CartController")
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String goodID = request.getParameter("goodID");
		String action = request.getParameter("action");
		String path = "";
		
		HttpSession session = request.getSession();
		CartDao cd = new CartDao();
		
		if (action.equals("1")) {
			cd.addCart(goodID);
			path = "views/cart/cart2.jsp";
			session.setAttribute("cart_gname", request.getParameter("goodName"));
			session.setAttribute("cart_gprice", request.getParameter("price"));
		}else if(action.equals("0")) {
			ArrayList<cart> clist = cd.findCart();
			if (clist.isEmpty()) {
				path = "views/cart/cart.jsp";
			}else {
				session.setAttribute("cartlist", clist);
				path = "views/cart/cart_product.jsp";
			}
			
		}else if (action.equals("2")) {
			String amount = request.getParameter("amount");
			String id = request.getParameter("cartID");
			cd.updateCart(id,amount);
			ArrayList<cart> clist = cd.findCart();
			if (clist.isEmpty()) {
				path = "views/cart/cart.jsp";
			}else {
				session.setAttribute("cartlist", clist);
				path = "views/cart/cart_product.jsp";
			}
		}
		
		response.sendRedirect(path);
	}
	
}
