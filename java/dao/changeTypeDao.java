package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class changeTypeDao {
	private Connection conn = null;
	//TwitDao オブジェクト生成時に DB に接続
	public changeTypeDao() {
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
	

	public Boolean typeInsert(String goodsID,String rName) {
		String sql = "	INSERT INTO goods_recommended values(?,?)";
		Boolean flg = false;
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			
			pst.setString(1, goodsID);
			pst.setString(2, rName);
			
			int n = pst.executeUpdate();
			
			if(n==1) {
				flg = true;
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}		
		return flg;
	}
	
	public Boolean typeUpdate(String goodsID,String rName) {
		String sql = "	UPDATE goods_recommended SET rName = ? where goodsID = ?";
		
		
		Boolean flg = false;
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, rName);
			pst.setString(2, goodsID);
			
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
