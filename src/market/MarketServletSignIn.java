package market;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class MarketServletSignIn
 */
@WebServlet("/MarketServletSignIn")
public class MarketServletSignIn extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MarketServletSignIn() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter writer = response.getWriter();
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		try {
			List<Customer> getRecords = CustomerDao.getRecords(userName);
			if (!(getRecords.isEmpty())) {
				for (Customer c : getRecords) {
					/*Cookie name = new Cookie("name", c.getName());
					Cookie userName2 = new Cookie("username", c.getUsername());
					Cookie passwordGet = new Cookie("password", c.getPassword());
					Cookie email = new Cookie("email", c.getEmail());
					Cookie mobile = new Cookie("mobile", String.valueOf(c.getMobile()));
					Cookie gender = new Cookie("gender", c.getGender());
					Cookie country = new Cookie("country", c.getCountry());
					Cookie city = new Cookie("city", c.getCity());
					Cookie address = new Cookie("country", c.getAddress());
					System.out.println(name.getValue());
					name.setPath("/");
					userName2.setPath("/");
					passwordGet.setPath("/");
					email.setPath("/");
					mobile.setPath("/");
					gender.setPath("/");
					country.setPath("/");
					city.setPath("/");
					address.setPath("/");
					name.setMaxAge(400);
					userName2.setMaxAge(400);
					passwordGet.setMaxAge(400);
					email.setMaxAge(400);
					mobile.setMaxAge(400);
					gender.setMaxAge(400);
					country.setMaxAge(400);
					city.setMaxAge(400);
					address.setMaxAge(400);
					response.addCookie(name);
					response.addCookie(userName2);
					response.addCookie(passwordGet);
					response.addCookie(email);
					response.addCookie(mobile);
					response.addCookie(gender);
					response.addCookie(country);
					response.addCookie(city);
					response.addCookie(address);*/
				      HttpSession sessions=request.getSession();  
				      sessions.setAttribute("name",c.getName());
				      sessions.setAttribute("username",c.getUsername());
				      sessions.setAttribute("password",c.getPassword());
				      sessions.setAttribute("email",c.getEmail());
				      sessions.setAttribute("mobile",c.getMobile());
				      sessions.setAttribute("gender",c.getGender());
				      sessions.setAttribute("country",c.getCountry());
				      sessions.setAttribute("city",c.getCity());
				      sessions.setAttribute("address",c.getAddress());
				}
				if (getRecords.get(0).getUsername().equals("admin")
						) {

					response.sendRedirect("admin.jsp");
				} else {
					response.sendRedirect("profile.jsp");

				}
			} else {

				writer.println("<h1> something happened or check you are logged in</h1>");
			}
		} catch (Exception e) {
              System.out.println(e);
		}
	}

}
