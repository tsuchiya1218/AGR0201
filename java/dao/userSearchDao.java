package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.user;

public class userSearchDao {
	private Connection conn = null;
	//TwitDao オブジェクト生成時に DB に接続
	public userSearchDao() {
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
	
	//会員名前で検索する
	public ArrayList<user> findUserForUserName(String searchUser){
		
		String sql = "SELECT * FROM user WHERE userName = ?";
		ArrayList<user> list = null;
		try {
			
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, searchUser);
			
			System.out.println(searchUser);
			
			ResultSet rs = pst.executeQuery();
			list = new ArrayList<user>();
			
			while(rs.next()) {
				user user = new user();
				
				user.setRegisterDate(rs.getString("registerDate"));
				user.setUserID(rs.getInt("userID"));
				user.setUserName(rs.getString("userName"));
				user.setBirth(rs.getString("birth"));
				user.setTel(rs.getString("tel"));
				user.setAddress(rs.getString("address"));
				list.add(user);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	//注文番号で検索する
	public ArrayList<user> findUserForUserMail(String searchUser){
		String sql = "SELECT * FROM user WHERE userMail = ?;";
		
		ArrayList<user> list = null;
		try {
			
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, searchUser);
			ResultSet rs = pst.executeQuery();
			list = new ArrayList<user>();
			
			while(rs.next()) {
				user user = new user();
				
				user.setRegisterDate(rs.getString("registerDate"));
				user.setUserID(rs.getInt("userID"));
				user.setUserName(rs.getString("userName"));
				user.setBirth(rs.getString("birth"));
				user.setAddress(rs.getString("address"));
				list.add(user);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}	
		return list;
	}
	
}