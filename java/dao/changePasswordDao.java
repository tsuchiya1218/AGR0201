package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class changePasswordDao {
	private Connection conn = null;
	//TwitDao オブジェクト生成時に DB に接続
	public changePasswordDao() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		try {
			conn =DriverManager.getConnection("jdbc:mysql://10.42.129.142:3306/"
				+ "20gr21?characterEncoding=UTF-8","20gr21","20gr21");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	//DB 切断
	public void connectionClose() {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//アドレスが存在するかどうか確認します。
	public Boolean findUser(String mail){
		String sql = "SELECT count(MANAGERID) AS NUM FROM MANAGER WHERE MANAGERMAIL = ?";
		Boolean flg = false;
		
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, mail);
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()) {
				int num = Integer.parseInt(rs.getString("NUM"));
				if(num != 0) {
					flg = true;
				}
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return flg;
		
	}
	//パスワードを変更します。
	public Boolean passwordUpdate(String password,String mail) {
		String sql = "UPDATE MANAGER SET MANAGERPASSWORD=? WHERE MANAGERMAIL=?";
		Boolean flg = false;
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, password);
			pst.setString(2, mail);
			int n = pst.executeUpdate();
			
			if(n==1) {
				flg = true;
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}		
		return flg;
	}
}
