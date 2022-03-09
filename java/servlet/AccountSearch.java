package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AccountDAO;
import model.Account;

/**
 * Servlet implementation class AccountDAO2
 */
@WebServlet("/AccountSearch")
public class AccountSearch extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
    	
        String loginId = request.getParameter("loginId");
        String pass = request.getParameter("pass");

       
        Account ab = new Account(loginId, pass);
        ab.setLoginId(loginId);
        ab.setPass(pass);

        AccountDAO ad = new AccountDAO();
        Account returnAb;
		try {
			returnAb = ad.findAccount(loginId,pass);
			if(returnAb != null) {
	            // セッションにアカウント情報＆ロールを登録
	            HttpSession session = request.getSession();
	            session.setAttribute("account", returnAb);

	            RequestDispatcher rd = request.getRequestDispatcher("./productSearch.jsp");
	            rd.forward(request, response);

	        } else {
	            RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
	            rd.forward(request, response);
	        }
		} catch (Exception e) {
			e.printStackTrace();
		}

        
    }
}