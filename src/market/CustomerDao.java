package market;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;

import com.mysql.jdbc.Connection;

import market.*;
import market.Customer;

public class CustomerDao {
	static Connection conn=null;
public static Connection getConnection() throws SQLException, ClassNotFoundException {
	 Class.forName("com.mysql.jdbc.Driver"); 
	conn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost/marketdatabase","root","123");
	return conn;
}

public static int save(Customer c){  
    int status=0;  
    try{  System.out.println(c.getName());
    System.out.println(c.getUsername());
    System.out.println(c.getPassword());
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"insert into customers(name,username,password,email,mobile,gender,country,city,address) values(?,?,?,?,?,?,?,?,?)");  
        ps.setString(1,c.getName());  
        ps.setString(2,c.getUsername());  
        ps.setString(3,c.getPassword());  
        ps.setString(4,c.getEmail());  
        ps.setInt(5,c.getMobile());  
        ps.setString(6,c.getGender());
        ps.setString(7,c.getCountry());
        ps.setString(8,c.getCity());
        ps.setString(9,c.getAddress());
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
public static int update(Customer c) throws ClassNotFoundException {
	int status=0;
	try {
	Connection con=getConnection();
	PreparedStatement ps=con.prepareStatement("update customers set  name=?,username=?,password=?,email=?,mobile=?,country=?,city=?,address=?,gender=? where username=?;");
	ps.setString(1, c.getName());
	ps.setString(2, c.getUsername());
	ps.setString(3, c.getPassword());
	ps.setString(4, c.getEmail());
	ps.setInt(5, c.getMobile());
	ps.setString(6, c.getCountry());
	ps.setString(7, c.getCity());
	ps.setString(8, c.getAddress());
	ps.setString(9, c.getGender());
	ps.setString(10, c.getUsername());
	status=ps.executeUpdate();
}
	catch(SQLException sql) {
	System.out.println(sql);	
	}
	return status;
	
}
public static List<Customer> getAllRecordsUsers() throws ClassNotFoundException {
	List<Customer> st=new ArrayList<Customer>();
	long status=0;
	try {
		
	Connection con=getConnection();
	PreparedStatement ps=con.prepareStatement("select * from customers ;");
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
public static Customer getAllRecordsByIdEdit(String userName) throws ClassNotFoundException {
	List<Customer> st=new ArrayList<Customer>();
	long status=0; Customer c= new Customer();
	try {
		
	Connection con=getConnection();
	PreparedStatement ps=con.prepareStatement("select * from customers where username=?;");
	ps.setString(1, userName);
	ResultSet rs=ps.executeQuery();
	while(rs.next()) {
		c.setName((rs.getString("name")));
		c.setUsername((rs.getString("username")));
		c.setPassword((rs.getString("password")));
		c.setGender((rs.getString("gender")));
		c.setEmail((rs.getString("email")));
		c.setMobile((rs.getInt("mobile")));
		c.setCountry((rs.getString("country")));
		c.setCity((rs.getString("city")));
		c.setAddress((rs.getString("address")));
		
		
	}
	
}
	catch(SQLException sql) {
	System.out.println(sql);	
	}
	return c;
	
}
public static int delete(String s) throws ClassNotFoundException {
	int status=0;
	try {
	Connection con=getConnection();
	PreparedStatement ps=con.prepareStatement("delete  from customers where username=?;");
	ps.setString(1, s);
	status=ps.executeUpdate();
}
	catch(SQLException sql) {
	System.out.println(sql);	
	}
	return status;
	
}
}
