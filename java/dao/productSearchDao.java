package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.goods;

public class productSearchDao {
	private Connection conn = null;
	//TwitDao オブジェクト生成時に DB に接続
	public productSearchDao() {
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
	
	//商品を検索する
	public ArrayList<goods> findGoodsForSearch(String categoryID,String goodsName,String startSellPrice,String endSellPrice){
		String sql = "SELECT categoryID,goodsName,goodsId,goodsPrice,goodsValue,stock FROM goods\r\n"
				+ "				WHERE  goodsPrice BETWEEN   ? AND ? \r\n"
				+ "				AND categoryID = ?"
				+ "				AND goodsName LIKE  ?";
				
		
		ArrayList<goods> list = null;
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			
			pst.setString(1,startSellPrice);
			pst.setString(2,endSellPrice);
			pst.setString(3,categoryID);
			pst.setString(4,'%' +goodsName+'%');
			
			
			ResultSet rs = pst.executeQuery();
			 list = new ArrayList<goods>();
			while(rs.next()) {
				goods one = new goods();
				
				one.setGoodsName(rs.getString("goodsName"));
				one.setGoodsID(rs.getInt("goodsID"));
				one.setGoodsPrice(rs.getInt("goodsPrice"));
				one.setGoodsValue(rs.getInt("goodsValue"));
				one.setStock(rs.getInt("stock"));
				
				list.add(one);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public ArrayList<goods> findStock(String goodsID){
		String sql = "SELECT goodsName,goodsID,stock FROM goods WHERE goodsID=?";
		
		ArrayList<goods> list = null;
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			
			pst.setString(1,goodsID);

			
			ResultSet rs = pst.executeQuery();
			 list = new ArrayList<goods>();
			while(rs.next()) {
				goods one = new goods();
				
				one.setGoodsName(rs.getString("goodsName"));
				one.setGoodsID(rs.getInt("goodsID"));
				one.setStock(rs.getInt("stock"));
				list.add(one);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}

}