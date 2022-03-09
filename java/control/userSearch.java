package control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.userSearchDao;
import model.user;

@WebServlet("/userSearch")
public class userSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	 	request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String searchUser = request.getParameter("searchUser");
		String userCheck = request.getParameter("userCheck");
		
		ArrayList<user> list = null;
		userSearchDao usd = new userSearchDao();
		
		if(searchUser!=null&&searchUser!="") {
			if(userCheck.equals("userName") ) {
				list = usd.findUserForUserName(searchUser);
				usd.connectionClose();
				request.setAttribute("list", list);
				RequestDispatcher rd = request.getRequestDispatcher("userSearchResult.jsp");
				rd.forward(request, response);
			}else if(userCheck.equals("userMail")) {
				list = usd.findUserForUserMail(searchUser);
				usd.connectionClose();
				request.setAttribute("list", list);
				RequestDispatcher rd = request.getRequestDispatcher("userSearchResult.jsp");
				rd.forward(request, response);
			}
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("userSearchFail.jsp");
			rd.forward(request, response);
		}	
	}
}

