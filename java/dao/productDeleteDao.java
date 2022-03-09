package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class productDeleteDao {
	private Connection conn = null;
	//TwitDao オブジェクト生成時に DB に接続
	public productDeleteDao() {
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
	public Boolean deleteGoods(String goodsID){
		String sql = "DELETE FROM goods WHERE goodsID = ?";
		String sql1 ="SET FOREIGN_KEY_CHECKS=0";
		String sql2 ="SET FOREIGN_KEY_CHECKS=1";
		Boolean flg = false;
		try {
			PreparedStatement pst = conn.prepareStatement(sql1);
			int n1 = pst.executeUpdate();
			 pst = conn.prepareStatement(sql);
			 pst.setString(1,goodsID);
			 int n2 = pst.executeUpdate();
			 System.out.println("ok");
			

			if(n2==1) {
				flg = true;
			}
			pst = conn.prepareStatement(sql2);
			int n3 = pst.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return flg;
	}
	
}