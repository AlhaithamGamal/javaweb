package market;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MarketServletEdit
 */
@WebServlet("/MarketServletEdit")
public class MarketServletEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MarketServletEdit() {
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
		PrintWriter out=response.getWriter();
		try {
		Customer c=new Customer();
		int status;
		String name=request.getParameter("name");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String email=request.getParameter("email");
		String country=request.getParameter("country");
		String gender=request.getParameter("gender");
		String city=request.getParameter("city");
		String address=request.getParameter("address");
		String mobile=request.getParameter("mobile");
		c.setName(name);
		c.setUsername(username);
		c.setPassword(password);
		c.setEmail(email);
		c.setCountry(country);
		c.setCity(city);
		c.setGender(gender);
		c.setAddress(address);
		c.setMobile(Integer.parseInt(mobile));
		status=CustomerDao.update(c);
		if(status>0) {
			  HttpSession sessions=request.getSession();  
			  sessions.setAttribute("name", c.getName());
			  sessions.setAttribute("username", c.getUsername());
			  sessions.setAttribute("password", c.getPassword());
			  sessions.setAttribute("email", c.getEmail());
			  sessions.setAttribute("country", c.getCountry());
			  sessions.setAttribute("city", c.getCity());
			  sessions.setAttribute("address", c.getAddress());
			  sessions.setAttribute("gender", c.getGender());
			  sessions.setAttribute("mobile", c.getMobile());
			  response.sendRedirect("profile.jsp");
			
		}
		else {
			out.println("<h1> something happened in database try again later !!!");
		}
		}
		catch(Exception e) {
			System.out.println(e);
		}
	}

}
