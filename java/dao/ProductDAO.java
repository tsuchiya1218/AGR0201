package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ProductDAO {
	public boolean insertDesk(String[] goodsData, String[] data) throws Exception {

		Connect connect = new Connect();
		Connection con = null;
		PreparedStatement pstate = null;
		ResultSet rs = null;

		int num = 0;
		boolean check = false;

		String insertGoods = "INSERT INTO goods VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		String insertDesk = "INSERT INTO desktop VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			con = connect.createConnection();

			pstate = con.prepareStatement(insertGoods);

			pstate.setInt(1, Integer.parseInt(goodsData[0]));
			pstate.setString(2, goodsData[1]);
			pstate.setInt(3, Integer.parseInt(goodsData[2]));
			pstate.setInt(4, Integer.parseInt(goodsData[3]));
			pstate.setString(5, goodsData[4]);
			pstate.setDate(6, Date.valueOf(goodsData[5]));
			pstate.setDate(7, Date.valueOf(goodsData[6]));
			pstate.setInt(8, Integer.parseInt(goodsData[7]));
			pstate.setInt(9, Integer.parseInt(goodsData[8]));
			pstate.setString(10, goodsData[9]);
			pstate.setString(11, goodsData[10]);
			pstate.setString(12, goodsData[11]);
			pstate.setInt(13, Integer.parseInt(goodsData[12]));

			num = pstate.executeUpdate();

			pstate.close();

			if (num != 0) {
				pstate = con.prepareStatement(insertDesk);

				pstate.setInt(1, Integer.parseInt(data[0]));
				pstate.setString(2, data[1]);
				pstate.setString(3, data[2]);
				pstate.setString(4, data[3]);
				pstate.setString(5, data[4]);
				pstate.setString(6, data[5]);
				pstate.setString(7, data[6]);
				pstate.setString(8, data[7]);
				pstate.setString(9, data[8]);
				pstate.setString(10, data[9]);
				pstate.setString(11, data[10]);
				pstate.setString(12, data[11]);
				pstate.setString(13, data[12]);
				pstate.setString(14, data[13]);
				pstate.setString(15, data[14]);
				pstate.setString(16, data[15]);

				num = pstate.executeUpdate();
			}

			if (num != 0) {
				check = true;
			}

		} catch (Exception e) {
			throw new Exception("DB接続処理に失敗しました！");
		} finally {
			if (rs != null)
				rs.close();
			if (pstate != null)
				pstate.close();
			connect.closeConnection(con);
		}

		return check;
	}

	public boolean insertLaptop(String[] goodsData, String[] data) throws Exception {

		Connect connect = new Connect();
		Connection con = null;
		PreparedStatement pstate = null;
		ResultSet rs = null;

		int num = 0;
		boolean check = false;

		String insertGoods = "INSERT INTO goods VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		String insertDesk = "INSERT INTO laptop VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			con = connect.createConnection();

			pstate = con.prepareStatement(insertGoods);

			pstate.setInt(1, Integer.parseInt(goodsData[0]));
			pstate.setString(2, goodsData[1]);
			pstate.setInt(3, Integer.parseInt(goodsData[2]));
			pstate.setInt(4, Integer.parseInt(goodsData[3]));
			pstate.setString(5, goodsData[4]);
			pstate.setDate(6, Date.valueOf(goodsData[5]));
			pstate.setDate(7, Date.valueOf(goodsData[6]));
			pstate.setInt(8, Integer.parseInt(goodsData[7]));
			pstate.setInt(9, Integer.parseInt(goodsData[8]));
			pstate.setString(10, goodsData[9]);
			pstate.setString(11, goodsData[10]);
			pstate.setString(12, goodsData[11]);
			pstate.setInt(13, Integer.parseInt(goodsData[12]));

			num = pstate.executeUpdate();

			pstate.close();

			if (num != 0) {
				pstate = con.prepareStatement(insertDesk);

				pstate.setInt(1, Integer.parseInt(data[0]));
				pstate.setString(2, data[1]);
				pstate.setString(3, data[2]);
				pstate.setString(4, data[3]);
				pstate.setString(5, data[4]);
				pstate.setString(6, data[5]);
				pstate.setString(7, data[6]);
				pstate.setString(8, data[7]);
				pstate.setString(9, data[8]);
				pstate.setString(10, data[9]);
				pstate.setString(11, data[10]);
				pstate.setString(12, data[11]);
				pstate.setString(13, data[12]);
				pstate.setString(14, data[13]);
				pstate.setString(15, data[14]);
				pstate.setString(16, data[15]);
				pstate.setString(17, data[16]);
				pstate.setString(18, data[17]);
				pstate.setString(19, data[18]);
				pstate.setString(20, data[19]);

				num = pstate.executeUpdate();
			}

			if (num != 0) {
				check = true;
			}

		} catch (Exception e) {
			throw new Exception("DB接続処理に失敗しました！");
		} finally {
			if (rs != null)
				rs.close();
			if (pstate != null)
				pstate.close();
			connect.closeConnection(con);
		}

		return check;
	}

	public boolean insertGpu(String[] goodsData, String[] data) throws Exception {

		Connect connect = new Connect();
		Connection con = null;
		PreparedStatement pstate = null;
		ResultSet rs = null;

		int num = 0;
		boolean check = false;

		String insertGoods = "INSERT INTO goods VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		String insertDesk = "INSERT INTO gpu VALUES(?,?,?,?,?,?,?,?,?,?,?)";
		try {
			con = connect.createConnection();

			pstate = con.prepareStatement(insertGoods);

			pstate.setInt(1, Integer.parseInt(goodsData[0]));
			pstate.setString(2, goodsData[1]);
			pstate.setInt(3, Integer.parseInt(goodsData[2]));
			pstate.setInt(4, Integer.parseInt(goodsData[3]));
			pstate.setString(5, goodsData[4]);
			pstate.setDate(6, Date.valueOf(goodsData[5]));
			pstate.setDate(7, Date.valueOf(goodsData[6]));
			pstate.setInt(8, Integer.parseInt(goodsData[7]));
			pstate.setInt(9, Integer.parseInt(goodsData[8]));
			pstate.setString(10, goodsData[9]);
			pstate.setString(11, goodsData[10]);
			pstate.setString(12, goodsData[11]);
			pstate.setInt(13, Integer.parseInt(goodsData[12]));

			num = pstate.executeUpdate();

			pstate.close();

			if (num != 0) {
				pstate = con.prepareStatement(insertDesk);

				pstate.setInt(1, Integer.parseInt(data[0]));
				pstate.setString(2, data[1]);
				pstate.setString(3, data[2]);
				pstate.setString(4, data[3]);
				pstate.setString(5, data[4]);
				pstate.setString(6, data[5]);
				pstate.setString(7, data[6]);
				pstate.setString(8, data[7]);
				pstate.setString(9, data[8]);
				pstate.setString(10, data[9]);
				pstate.setString(11, data[10]);

				num = pstate.executeUpdate();
			}

			if (num != 0) {
				check = true;
			}

		} catch (Exception e) {
			throw new Exception("DB接続処理に失敗しました！");
		} finally {
			if (rs != null)
				rs.close();
			if (pstate != null)
				pstate.close();
			connect.closeConnection(con);
		}

		return check;
	}

	public boolean insertMain(String[] goodsData, String[] data) throws Exception {

		Connect connect = new Connect();
		Connection con = null;
		PreparedStatement pstate = null;
		ResultSet rs = null;

		int num = 0;
		boolean check = false;

		String insertGoods = "INSERT INTO goods VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		String insertDesk = "INSERT INTO mainboard VALUES(?,?,?,?,?,?,?,?,?,?,?)";
		try {
			con = connect.createConnection();

			pstate = con.prepareStatement(insertGoods);

			pstate.setInt(1, Integer.parseInt(goodsData[0]));
			pstate.setString(2, goodsData[1]);
			pstate.setInt(3, Integer.parseInt(goodsData[2]));
			pstate.setInt(4, Integer.parseInt(goodsData[3]));
			pstate.setString(5, goodsData[4]);
			pstate.setDate(6, Date.valueOf(goodsData[5]));
			pstate.setDate(7, Date.valueOf(goodsData[6]));
			pstate.setInt(8, Integer.parseInt(goodsData[7]));
			pstate.setInt(9, Integer.parseInt(goodsData[8]));
			pstate.setString(10, goodsData[9]);
			pstate.setString(11, goodsData[10]);
			pstate.setString(12, goodsData[11]);
			pstate.setInt(13, Integer.parseInt(goodsData[12]));

			num = pstate.executeUpdate();

			pstate.close();

			if (num != 0) {
				pstate = con.prepareStatement(insertDesk);

				pstate.setInt(1, Integer.parseInt(data[0]));
				pstate.setString(2, data[1]);
				pstate.setString(3, data[2]);
				pstate.setString(4, data[3]);
				pstate.setString(5, data[4]);
				pstate.setString(6, data[5]);
				pstate.setString(7, data[6]);
				pstate.setString(8, data[7]);
				pstate.setString(9, data[8]);
				pstate.setString(10, data[9]);
				pstate.setInt(11, Integer.parseInt(data[10]));

				num = pstate.executeUpdate();
			}

			if (num != 0) {
				check = true;
			}

		} catch (Exception e) {
			throw new Exception("DB接続処理に失敗しました！");
		} finally {
			if (rs != null)
				rs.close();
			if (pstate != null)
				pstate.close();
			connect.closeConnection(con);
		}

		return check;
	}
}