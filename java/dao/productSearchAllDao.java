package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.goods;

public class productSearchAllDao {
	private Connection conn = null;
	//TwitDao オブジェクト生成時に DB に接続
	public productSearchAllDao() {
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
	public ArrayList<goods> findGoodsForSearchAll(){
		String sql = "SELECT categoryID,goodsName,goodsId,goodsPrice,goodsValue,stock,goodsImg FROM goods";
				
				
		
		ArrayList<goods> list = null;
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			
			ResultSet rs = pst.executeQuery();
			 list = new ArrayList<goods>();
			while(rs.next()) {
				goods one = new goods();
				
				one.setGoodsName(rs.getString("goodsName"));
				one.setGoodsID(rs.getInt("goodsID"));
				one.setGoodsPrice(rs.getInt("goodsPrice"));
				one.setGoodsValue(rs.getInt("goodsValue"));
				one.setStock(rs.getInt("stock"));
				one.setGoodsImg(rs.getString("goodsImg"));
				
				list.add(one);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	

}