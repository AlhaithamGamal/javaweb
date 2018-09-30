package market;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileUploadException;
import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.apache.*;
import org.apache.commons.fileupload.FileItemFactory;

import javax.servlet.http.*;


import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class MarketServletProduct
 */
@WebServlet("/MarketServletProduct")
public class MarketServletProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MarketServletProduct() {
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
		Product p=new Product();
		MultipartRequest m = new MultipartRequest(request, "C:\\Users\\Alhaitham Gamal\\eclipse\\market\\WebContent",5000*1024);
		String productname=m.getParameter("productname");
		String productquantity=m.getParameter("productquantity");
		String productprice=m.getParameter("productprice");
		String producttype=m.getParameter("producttype");
		String currency=m.getParameter("currency");
		String imagename=m.getFilesystemName("fileName");
		p.setProductname(productname);
		p.setProductquantity(productquantity);
		p.setProducttype(producttype);
		p.setProductprice(productprice);
		p.setCurrency(currency);
		p.setProductimage(imagename);
		int j=ProductDao.saveProduct(p);
		if(j>0) {
			writer.println("added successfully");
		}
		else {
			writer.println("sorry not added try again later ");
		}
	}

}
