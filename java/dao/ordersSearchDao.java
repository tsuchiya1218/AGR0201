package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

public class ordersSearchDao {
	private Connection conn = null;
	//TwitDao オブジェクト生成時に DB に接続
	public ordersSearchDao() {
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
	
	//日付で検索する
	public ArrayList<HashMap<String,String>> findOrdersForOrdersDate(String ordersYear,String ordersMonth,String ordersDay){
		String sql = "SELECT ordersID,ordersDate,u.userName,o.userID,ordersPaymentType,ordersPayment,d.deliveryType\r\n"
				+ "From orders  AS o  INNER JOIN user AS u on o.userID =  u.userId\r\n"
				+ " INNER JOIN delivery AS d ON o.deliveryID = d.deliveryID\r\n"
				+ " WHERE ordersDate = ?";
		
		ArrayList<HashMap<String,String>> maplist = null;
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			String str = ordersYear+"-"+ordersMonth+"-"+ordersDay;
			System.out.println(str);
			pst.setString(1, str);
			ResultSet rs = pst.executeQuery();
			 maplist = new ArrayList<HashMap<String,String>>();
			while(rs.next()) {
				HashMap<String,String> map = new HashMap<String,String>();
				map.put("注文番号", rs.getString("ordersID"));
				map.put("注文日付", rs.getString("ordersDate"));
				map.put( "注文者", rs.getString("userName"));
				map.put("注文者番号", rs.getString("userID"));
				map.put("決済方法", rs.getString("ordersPaymentType"));
				map.put("金額", rs.getString("ordersPayment"));
				map.put("配送方法",rs.getString("deliveryType"));
				maplist.add(map);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return maplist;
	}
	//注文番号で検索する
	public HashMap<String,String> findOrdersForUserID(String orderID){
		String sql = "SELECT ordersID,ordersDate,u.userName,o.userID,ordersPaymentType,ordersPayment,d.deliveryType\r\n"
				+ "from orders  AS o  INNER JOIN user AS u on o.userID =  u.userId\r\n"
				+ " INNER JOIN delivery AS d ON o.deliveryID = d.deliveryID\r\n"
				+ " WHERE ordersID = ?";
		HashMap<String,String> map = null;
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1,orderID);
			ResultSet rs = pst.executeQuery();
			 map = new HashMap<String,String>();
			
			while(rs.next()) {			
				map.put("注文番号", rs.getString("ordersID"));
				map.put("注文日付", rs.getString("ordersDate"));
				map.put( "注文者", rs.getString("userName"));
				map.put("注文者番号", rs.getString("userID"));
				map.put("決済方法", rs.getString("ordersPaymentType"));
				map.put("金額", rs.getString("ordersPayment"));
				map.put("配送方法",rs.getString("deliveryType"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return map;
	}
	
}