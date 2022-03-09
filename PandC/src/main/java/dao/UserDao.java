package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.user;

public class UserDao {
	private Connection con = null;

	// オブジェクト生成時に DB に接続
	public UserDao() {
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
	
	public void addUser(user user) {
		String sql = "INSERT INTO user(userName,userMail,password) VALUES (?,?,?)";
		try {
			PreparedStatement state = con.prepareStatement(sql);
			state.setString(1, user.getUserName());
			state.setString(2, user.getUserMail());
			state.setString(3, user.getPassword());
			state.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<user> login(String userMail, String password) {
		String sql = "SELECT * FROM user WHERE userMail LIKE ?";
		ArrayList<user> ary = new ArrayList<user>();
		try {
			PreparedStatement state = con.prepareStatement(sql);
			state.setString(1, userMail);
			state.execute();
			ResultSet rs = state.getResultSet();
			while (rs.next()) {
				if (rs.getString("password").equals(password)) {
					user u = new user();
					u.setUserID(rs.getString("userID"));
					u.setUserName(rs.getString("userName"));
					u.setUserMail(rs.getString("userMail"));
					u.setPassword(rs.getString("password"));
					u.setTel(rs.getString("tel"));
					u.setZip(rs.getString("postNumber"));
					u.setAddress(rs.getString("address"));
					u.setLogin_status(1);
					ary.add(u);
				}else {
					user u = new user();
					u.setLogin_status(0);
					ary.add(u);
				}
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return ary;
	}
	
	public void changeProfile(String name,String  mail1,String tel, String mail2) {
		String sql = "UPDATE user SET userName = ? , userMail = ? , tel = ? WHERE userMail = ?";
		
		try {
			PreparedStatement state = con.prepareStatement(sql);
			state.setString(1, name);
			state.setString(2, mail1);
			state.setString(3, tel);
			state.setString(4, mail2);
			state.executeUpdate();
		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
	}
	
	public void changeAddr(String zip, String addr, String mail) {
		String sql = "UPDATE user SET postNumber = ? , address = ? WHERE userMail = ?";
		
		try {
			PreparedStatement state = con.prepareStatement(sql);
			state.setString(1, zip);
			state.setString(2, addr);
			state.setString(3, mail);
			state.executeUpdate();
		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
	}
	
	public void changePayment(String card_name,String userID, String card_number, String expiration_year, String expiration_month, String cvv) {
		String sql = "INSERT INTO credit_card VALUES(?,?,?,?,?)";
		try {
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, card_name);
			pst.setString(2, userID);
			pst.setString(3, card_number);
			pst.setString(4, expiration_year+ "/" +expiration_month);
			pst.setString(5, cvv);
			pst.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void findUser() {
		
	}
}