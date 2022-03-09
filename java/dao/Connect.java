package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connect {
	protected Connection createConnection() throws Exception {
		String url = "jdbc:mysql://10.42.129.142:3306/20gr21";
		String user = "20gr21";
		String pass = "20gr21";

		Connection con = null;
		Class.forName("com.mysql.jdbc.Driver");
		try {
			con = DriverManager.getConnection(url, user, pass);

		} catch (SQLException e) {
			throw new Exception("DB接続処理に失敗しました！");
		}
		return con;
	}

	protected void closeConnection(Connection con) throws Exception {

		try {
			con.close();
		} catch (SQLException e) {
			throw new Exception("DB接続処理に失敗しました！");
		}
	}
}
