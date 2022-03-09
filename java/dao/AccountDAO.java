package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.Account;
public class AccountDAO {
	public Account findAccount(String managerID, String managerPass) throws Exception {
		
		Connect connect = new Connect();
		Connection con = null;
		PreparedStatement pstate = null;
		ResultSet rs = null;
		Account ac = null;
		
		
		String Sql = "SELECT managerId, managerPassword FROM manager "
     		+ "WHERE managerId = ? AND managerPassword = ?";
		
		try {
			con = connect.createConnection();
			
			pstate = con.prepareStatement(Sql);
			
			pstate.setString(1, managerID);
			pstate.setString(2, managerPass);
			
			rs = pstate.executeQuery();
		
			if(rs.next() == true){
				ac = new Account(rs.getString("managerID"), rs.getString("managerPassword"));
			}
			
		} catch (Exception e) {
			throw new Exception ("DB接続処理に失敗しました！");
		}finally {
			if(rs != null) rs.close();
			if(pstate != null) pstate.close();
			connect.closeConnection(con);
		}
		
		return ac;
	}
}

