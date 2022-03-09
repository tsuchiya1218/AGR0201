package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.orders;

public class orderSaleDao {
	private Connection conn = null;
	//TwitDao オブジェクト生成時に DB に接続
	public orderSaleDao() {
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
	public ArrayList<orders> findAllOrderSale(String year,String month){
		String sql = "SELECT SUM(ordersPayment) AS sum,ordersDate FROM orders GROUP BY ordersDate HAVING ordersDate LIKE ? ORDER BY ordersDate;";
		ArrayList<orders> list = null;
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			String date = year +"-"+ month + "%";
			pst.setString(1, date);
			ResultSet rs = pst.executeQuery();
			list = new ArrayList<orders>();

			while(rs.next()) {
				orders o = new orders();
				o.setOrdersPaymentSum(rs.getInt("sum"));
				o.setOrdersDate(rs.getString("ordersDate"));
				list.add(o);

			}
		
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
}