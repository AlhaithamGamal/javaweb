package market;

import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.*;
import com.mysql.jdbc.Connection;
import java.util.*;

public class BuyProductDao {

	static Connection conn = null;

	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.jdbc.Driver");
		conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/marketdatabase", "root", "123");
		return conn;
	}

	public static int saveRequest(Transaction t) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(
					"insert into buyproduct(address,date,productname,productprice,quantitywanted,totalprice,username) values(?,?,?,?,?,?,?)");
			PreparedStatement ps2 = con.prepareStatement("update products set productquantity=? where productname=?");
			PreparedStatement ps3 = con.prepareStatement("select productquamtity from products where productname=? ");
			ps.setString(1, t.getAddress());
			ps.setString(2, t.getDate());
			ps.setString(3, t.getProductname());
			ps.setDouble(4, t.getProductprice());
			ps.setInt(5, t.getQuantitywanted());
			ps.setDouble(6, t.getTotalprice());
			ps.setString(7, t.getUsername());
			ps3.setString(1, t.getProductname());
			ResultSet rs = ps3.executeQuery();
			int quant = 0;
			while (rs.next()) {
				quant = rs.getInt("productquantity");
			}
			quant = quant - t.getQuantitywanted();
			if (quant > 0) {
				status = ps.executeUpdate();
				ps2.setInt(1, quant);
				ps2.setString(2, t.getProductname());
				ps2.executeUpdate();
			}
			

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static double getTotal(String userName) throws ClassNotFoundException {
		double sum = 0;
		long status = 0;
		try {

			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select totalprice from buyproduct where username=?;");
			ps.setString(1, userName);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				sum = sum + rs.getDouble("totalprice");
				

			}

		} catch (SQLException sql) {
			System.out.println(sql);
		}
		return sum;

	}

	public static int updateRequest(Transaction t) throws ClassNotFoundException {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(
					"update buyproduct set  productname=?,address=?,quantitywanted=?,date=?,totalprice=? where requestid=?;");
			ps.setString(1, t.getProductname());
			ps.setString(2, t.getAddress());
			ps.setInt(3, t.getQuantitywanted());
			Date date = (Date) java.util.Calendar.getInstance().getTime();
			t.setDate(date.toString());
			ps.setString(4, t.getDate());
			double total = getTotal(t.getUsername());
			if (total > 0) { // for the firsttime added
				t.setTotalprice(total);
				ps.setDouble(5, total);
			} else {
				ps.setDouble(5, t.getTotalprice());
			}
			ps.setDouble(6, t.getTotalprice());
			ps.setInt(7, t.getRequestid());
			status = ps.executeUpdate();
		} catch (SQLException sql) {
			System.out.println(sql);
		}
		return status;

	}

	public static List<Transaction> getAllRecordsTransactions() throws ClassNotFoundException {
		List<Transaction> st = new ArrayList<Transaction>();
		long status = 0;
		try {

			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from buyproduct;");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Transaction t = new Transaction();
				t.setUsername(rs.getString("username"));
				t.setProductname(rs.getString("productname"));
				t.setRequestid(Integer.parseInt(rs.getString("reuestid")));
				t.setQuantitywanted(Integer.parseInt(rs.getString("quantitywanted")));
				t.setDate(rs.getString("date"));
				t.setAddress(rs.getString("address"));
				t.setProductprice(Double.parseDouble("productprice"));
				t.setTotalprice(Double.parseDouble("totalprice"));
				;
				st.add(t);

			}

		} catch (SQLException sql) {
			System.out.println(sql);
		}
		return st;

	}

	public static Transaction getAllRecordsByTransaction(int id) throws ClassNotFoundException {
		List<Transaction> st = new ArrayList<Transaction>();
		Transaction t = new Transaction();
		long status = 0;
		try {

			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from buyproduct where requestid=?;");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				t.setRequestid(Integer.parseInt(rs.getString("requestid")));
				t.setUsername(rs.getString("username"));
				t.setAddress(rs.getString("address"));
				t.setProductname(rs.getString("productname"));
				t.setProductprice(Double.parseDouble(rs.getString("productprice")));
				t.setQuantitywanted(Integer.parseInt(rs.getString("quantitywanted")));
				t.setDate(rs.getString("date"));
				t.setTotalprice(Double.parseDouble(rs.getString("totalprice")));

			}

		} catch (SQLException sql) {
			System.out.println(sql);
		}
		return t;

	}

	public static int deleteRequest(int requestid, String userName) throws ClassNotFoundException {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps2=con.prepareStatement("select totalprice from buyproduct where requestid=?");
			ps2.setInt(1, requestid);
			ResultSet rs=ps2.executeQuery();
			int totalprice=0;
			while(rs.next()) {
				totalprice=rs.getInt("totalprice");
			}
			PreparedStatement ps3=con.prepareStatement("select totalprice,requestid from buyproduct");
			ResultSet rs2=ps3.executeQuery();
			int totalpriceOthers=0;
			int requestId;
			while(rs2.next()) {
				totalpriceOthers=rs2.getInt("totalprice");
				requestId=rs2.getInt("requestid");
				if(totalpriceOthers>totalprice) {
					totalpriceOthers=totalpriceOthers-totalprice;
					PreparedStatement ps=con.prepareStatement("update buyproduct set totalprice=? where requestid=?");
					ps.setDouble(1, totalpriceOthers);
					ps.setInt(2, requestId);
					ps.executeQuery();
				}
				else {totalpriceOthers=totalprice-totalpriceOthers;
				PreparedStatement ps=con.prepareStatement("update buyproduct set totalprice=? where requestid=?");
				ps.setDouble(1, totalpriceOthers);
				ps.setInt(2, requestId);
				ps.executeQuery();
					
				}
				
			}
			PreparedStatement ps = con.prepareStatement("delete * from buyproduct where requestid=?;");
			ps.setInt(1, requestid);
			status = ps.executeUpdate();
		} catch (SQLException sql) {
			System.out.println(sql);
		}
		return status;

	}

	public static List<Transaction> getAllRecordsTransactionsOfUser(String userName) throws ClassNotFoundException {
		List<Transaction> st = new ArrayList<Transaction>();
		long status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from buyproduct where username=?;");
			ps.setString(1, userName);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Transaction t = new Transaction();
				t.setUsername(rs.getString("username"));
				t.setProductname(rs.getString("productname"));
				t.setProductprice(rs.getDouble("productprice"));
				t.setRequestid(Integer.parseInt(rs.getString("requestid")));
				t.setQuantitywanted(Integer.parseInt(rs.getString("quantitywanted")));
				t.setDate(rs.getString("date"));
				t.setAddress(rs.getString("address"));
				t.setTotalprice(rs.getDouble("totalprice"));
				;
				st.add(t);

			}

		} catch (SQLException sql) {
			System.out.println(sql);
		}
		return st;

	}
}
