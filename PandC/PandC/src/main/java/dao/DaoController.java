package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.maker;

public class DaoController {
	private Connection con = null;

	// オブジェクト生成時に DB に接続
	public DaoController() {
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

	//DB 切断
	public void connectionClose() {
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<maker> findMaker() {
		String sql = "SELECT * FROM maker";
		ArrayList<maker> ary = null;
		try {
			Statement state = con.createStatement();
			ResultSet rs = state.executeQuery(sql);
			ary = new ArrayList<maker>();
			while (rs.next()) {
				maker one = new maker();
				one.setMakerID(rs.getString("makerID"));
				one.setMakerName(rs.getString("makerName"));
				one.setMakerImg(rs.getString("makerImg"));
				ary.add(one);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ary;
	}

}
