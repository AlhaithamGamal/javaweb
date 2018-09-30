package market;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

 import java.util.*;
 import java.sql.* ;
/**
 * Servlet implementation class MarketServlet
 */
@WebServlet("/MarketServlet")
public class MarketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MarketServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter writer=response.getWriter();
		Customer c=new Customer();
		String name=request.getParameter("name");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String email=request.getParameter("email");
		String gender=request.getParameter("gender");
		String country=request.getParameter("country");
		String city=request.getParameter("city");
		String address=request.getParameter("address");
		String mobile=request.getParameter("mobile");
		c.setName(name);
		c.setUsername(username);
		c.setPassword(password);
		c.setEmail(email);
		c.setGender(gender);
		c.setCountry(country);
		c.setCity(city);
		c.setAddress(address);
		c.setMobile(Integer.parseInt(mobile));
		int j=CustomerDao.save(c);
		if(j>0){
		// Cookie cok=new Cookie("username",c.getUsername());
		// cok.setMaxAge(0);
		// response.addCookie(cok);
			
		Cookie cok2=new Cookie("name", request.getParameter("name"));
		Cookie cok3=new Cookie("username",request.getParameter("username"));
		cok2.setPath("/");
		cok3.setPath("/");
		cok2.setMaxAge(6);
		cok3.setMaxAge(6);
		response.addCookie(cok2); 
		response.addCookie(cok3); 
		response.sendRedirect("successAdd.jsp");
		}
		else{
			
			writer.println("<h1> something happened</h1>");
		}
	
		
	}

}
