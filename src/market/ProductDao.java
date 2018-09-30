package market;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;

public class ProductDao {
	static Connection conn=null;
	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		 Class.forName("com.mysql.jdbc.Driver"); 
		conn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost/marketdatabase","root","123");
		return conn;
	}

	public static int saveProduct(Product  p){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement(  
	"insert into products(productname,productquantity,productprice,producttype,imagename,currency) values(?,?,?,?,?,?)");  
	        ps.setString(1,p.getProductname());  
	        ps.setString(2,p.getProductquantity());  
	        ps.setString(3,p.getProductprice());  
	        ps.setString(4,p.getProducttype());  
	        ps.setString(5,p.getProductimage());  
	        ps.setString(6,p.getCurrency());
	        status=ps.executeUpdate();  
	       
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}
	public static List<Customer> getRecords(String userName) throws ClassNotFoundException {
		List<Customer> st=new ArrayList<Customer>();
		long status=0;
		try {
			
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from customers where username=?;");
		ps.setString(1, userName);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			Customer c=new Customer();
			c.setName((rs.getString("name")));
			c.setUsername((rs.getString("username")));
			c.setPassword((rs.getString("password")));
			c.setGender((rs.getString("gender")));
			c.setEmail((rs.getString("email")));
			c.setMobile((rs.getInt("mobile")));
			c.setCountry((rs.getString("country")));
			c.setCity((rs.getString("city")));
			c.setAddress((rs.getString("address")));
			st.add(c);
			
		}
		
	}
		catch(SQLException sql) {
		System.out.println(sql);	
		}
		return st;
		
	}
	public static int update(Product c) throws ClassNotFoundException {
		int status=0;
		try {
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("update products set  productname=?,producttype=?,productquantity=?,productprice=?,imagename=?,currency=? where productname=?;");
		ps.setString(1, c.getProductname());
		ps.setString(2, c.getProducttype());
		ps.setString(3, c.getProductquantity());
		ps.setString(4,  c.getProductprice());
		ps.setString(5, c.getProductimage());
		ps.setString(6, c.getCurrency());
		ps.setString(7, c.getProductname());
		status=ps.executeUpdate();
	}
		catch(SQLException sql) {
		System.out.println(sql);	
		}
		return status;
		
	}
	public static List<Product> getAllRecordsProducts() throws ClassNotFoundException {
		List<Product> st=new ArrayList<Product>();
		long status=0;
		try {
			
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from products ;");
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			Product p=new Product();
			p.setProductname(rs.getString("productname"));
			p.setProductquantity(rs.getString("productquantity"));
			p.setProductprice(rs.getString("productprice"));
			p.setProducttype(rs.getString("producttype"));
			p.setCurrency(rs.getString("currency"));
			p.setProductimage(rs.getString("imagename"));
			st.add(p);
			
		}
		
	}
		catch(SQLException sql) {
		System.out.println(sql);	
		}
		return st;
		
	}
	public static Product getAllRecordsByIdEditProduct(String productName) throws ClassNotFoundException {
		List<Customer> st=new ArrayList<Customer>();
		long status=0; Product c= new Product();
		try {
			
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from products where productname=?;");
		ps.setString(1, productName);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			c.setProductname((rs.getString("productname")));
			c.setProductquantity(rs.getString("productquantity"));
			c.setProducttype(rs.getString("producttype"));
			c.setProductprice(rs.getString("productprice"));
			c.setProductimage(rs.getString("imagename"));
			c.setCurrency(rs.getString("currency"));
			
			
		}
		
	}
		catch(SQLException sql) {
		System.out.println(sql);	
		}
		return c;
		
	}
	public static int deleteProduct(String s) throws ClassNotFoundException {
		int status=0;
		try {
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("delete  from products where productname=?;");
		ps.setString(1, s);
		status=ps.executeUpdate();
	}
		catch(SQLException sql) {
		System.out.println(sql);	
		}
		return status;
		
	}
}
