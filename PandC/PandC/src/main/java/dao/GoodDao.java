package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.desktop;
import model.good;
import model.laptop;

public class GoodDao {
	private Connection con = null;

	// オブジェクト生成時に DB に接続
	public GoodDao() {
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
	
	public ArrayList<good> findAll() {
		String sql = "SELECT *, makerName FROM goods INNER JOIN maker ON goods.makerID = maker.makerID";
		ArrayList<good> ary = null;
		try {
			Statement state = con.createStatement();
			ResultSet rs = state.executeQuery(sql);
			ary = new ArrayList<good>();
			while (rs.next()) {
				good one = new good();
				one.setGoodID(rs.getString("goodsID"));
				one.setGoodsName(rs.getString("goodsName"));
				one.setGoodsImg(rs.getString("goodsImg"));
				one.setValue(rs.getString("goodsValue"));
				one.setPrice(rs.getString("goodsPrice"));
				ary.add(one);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return ary;
	}
	
	public ArrayList<good> findGood(String keyword) {
		String sql = "SELECT *, makerName FROM goods INNER JOIN maker ON goods.makerID = maker.makerID WHERE goodsName LIKE ?";
		ArrayList<good> ary = new ArrayList<good>();
		ResultSet rs = null;
		try {
			PreparedStatement state = con.prepareStatement(sql);
			state.setString(1,"%" + keyword + "%");
			state.execute();
			rs = state.getResultSet();
			while (rs.next()) {
				good one = new good();
				one.setGoodID(rs.getString("goodsID"));
				one.setGoodsName(rs.getString("goodsName"));
				one.setGoodsImg(rs.getString("goodsImg"));
				one.setValue(rs.getString("goodsValue"));
				one.setPrice(rs.getString("goodsPrice"));
				ary.add(one);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return ary;
	}
	
	public ArrayList<desktop> findDesktop(String id) {
		String sql = "SELECT * FROM goods INNER JOIN desktop ON goods.goodsID = desktop.goodsID WHERE goods.goodsID = ?";
		ArrayList<desktop> ary = new ArrayList<desktop>();
		ResultSet rs = null;
		try {
			PreparedStatement state = con.prepareStatement(sql);
			state.setString(1,id);
			state.execute();
			rs = state.getResultSet();
			while (rs.next()) {
				desktop one = new desktop();
				one.setGoodID(rs.getString("goodsID"));
				one.setGoodsName(rs.getString("goodsName"));
				one.setGoodsImg(rs.getString("goodsImg"));
				one.setGoodsAbout(rs.getString("goodsAbout"));
				one.setFeatureImg(rs.getString("featureImg"));
				one.setGoodsFeatures(rs.getString("goodsFeatures"));
				one.setValue(rs.getString("goodsValue"));
				one.setPrice(rs.getString("goodsPrice"));
				one.setOS(rs.getString("OS"));
				one.setCPU(rs.getString("CPU"));
				one.setCpuClock(rs.getString("cpuClock"));
				one.setMemory(rs.getString("memory"));
				ary.add(one);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return ary;
	}
	
	public ArrayList<laptop> findLaptop(String id) {
		String sql = "SELECT * FROM goods INNER JOIN laptop ON goods.goodsID = laptop.goodsID WHERE goods.goodsID = ?";
		ArrayList<laptop> ary = new ArrayList<laptop>();
		ResultSet rs = null;
		try {
			PreparedStatement state = con.prepareStatement(sql);
			state.setString(1,id);
			state.execute();
			rs = state.getResultSet();
			while (rs.next()) {
				laptop one = new laptop();
				one.setGoodID(rs.getString("goodsID"));
				one.setGoodsName(rs.getString("goodsName"));
				one.setGoodsImg(rs.getString("goodsImg"));
				one.setGoodsAbout(rs.getString("goodsAbout"));
				one.setFeatureImg(rs.getString("featureImg"));
				one.setGoodsFeatures(rs.getString("goodsFeatures"));
				one.setValue(rs.getString("goodsValue"));
				one.setPrice(rs.getString("goodsPrice"));
				one.setOS(rs.getString("OS"));
				one.setDisplay(rs.getString("display"));
				one.setClockSpeed(rs.getString("clockSpeed"));
				one.setGraphicCard(rs.getString("graphicCard"));
				one.setMemory(rs.getString("memory"));
				one.setStorage(rs.getString("storage"));
				ary.add(one);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return ary;
	}
	
}
