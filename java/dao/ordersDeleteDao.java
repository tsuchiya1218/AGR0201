package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ordersDeleteDao {
	private Connection conn = null;
	//TwitDao オブジェクト生成時に DB に接続
	public ordersDeleteDao() {
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
	
	//
	public Boolean deleteOrder(String number){
		String sql = "DELETE FROM ORDERS WHERE ORDERSID = ?";
		Boolean flg = false;
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1,number);
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