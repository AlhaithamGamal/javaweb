package market;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MarketProduct
 */
@WebServlet("/MarketProduct")
public class MarketTransaction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MarketTransaction() {
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
		try {
		double boole;
		PrintWriter writer = response.getWriter();
		Transaction t = new Transaction();
		String username = request.getParameter("username");
		String address = request.getParameter("address");
		String productname = request.getParameter("productname");
		String quantitywanted = request.getParameter("quantitywanted");
		double productprice = Double.parseDouble(request.getParameter("productprice"));
		String totalprice = request.getParameter("totalprice");
		Date date=java.util.Calendar.getInstance().getTime(); 
		t.setDate(date.toString());
		t.setUsername(username);
		t.setAddress(address);
		t.setProductname(productname);
		t.setProductprice(productprice);
		t.setQuantitywanted(Integer.parseInt(quantitywanted));
			boole=BuyProductDao.getTotal(username);
			if(boole>0) {
			t.setTotalprice(boole);
			}
			else {
				t.setTotalprice(Double.parseDouble(totalprice));
			}
			int j = BuyProductDao.saveRequest(t);
			if (j > 0) {
			writer.println("added");
			}
			else {writer.print("quantity not available ");}
			
		
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

}
}
