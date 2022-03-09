package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.cart;

public class CartDao {
	private Connection con = null;

	// オブジェクト生成時に DB に接続
	public CartDao() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.exit(1);
		}
		try {
			con = DriverManager.getConnection("jdbc:mysql://10.42.129.142:3306/"
					+ "20gr21?characterEncoding=UTF-8", "20gr21", "20gr21");
		} catch (SQLException e) {
			e.printStackTrace();
			System.exit(1);
		}
	}

	public void connectionClose() {
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void addCart(String id) {
		String sql = "INSERT INTO cart(goodsID,amount) VALUES (?,1)";
		try {
			PreparedStatement state = con.prepareStatement(sql);
			state.setString(1, id);
			state.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<cart> findCart() {
		String sql = "SELECT * FROM cart INNER JOIN goods ON cart.goodsID = goods.goodsID";
		ArrayList<cart> ary = null;
		try {
			Statement state = con.createStatement();
			ResultSet rs = state.executeQuery(sql);
			ary = new ArrayList<cart>();
			while (rs.next()) {
				cart one = new cart();
				one.setGoodsName(rs.getString("goodsName"));
				one.setGoodsImg(rs.getString("goodsImg"));
				one.setPrice(rs.getString("goodsPrice"));
				one.setValue(rs.getString("goodsValue"));
				one.setAmount(rs.getString("amount"));
				one.setCartID(rs.getString("cartID"));
				ary.add(one);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return ary;
	}
	
	public void updateCart(String id,String amount) {
		String sql = "UPDATE cart SET amount = ? WHERE cartID = ?";
		try {
			PreparedStatement state = con.prepareStatement(sql);
			state.setString(1, amount);
			state.setString(2, id);
			state.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
