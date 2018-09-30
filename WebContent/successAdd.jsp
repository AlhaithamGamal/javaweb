<%@page import="java.util.Base64.Decoder"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>succsess add</title>
<%@ page import="com.oreilly.servlet.MultipartRequest" %> 
<%@ page import="java.sql.*" %> 
<%@page import="market.*" %>
<%@page import="java.net.*" %>
</head>
<body>
<h1> You have been added to our database</h1>
<jsp:include page="SignIn.jsp"></jsp:include>
<% String name=null,value=null;
//Cookie  ck[]=request.getCookies();
//String name=ck[0].getValue();
//String userName=ck[1].getName();
Cookie[] cookies = request.getCookies();
if (cookies != null) {
	 for (Cookie cookie : cookies) {
	   if (cookie.getName().equals("username")) {
	     //do something
	     //value can be retrieved using #cookie.getValue()
	      HttpSession sessions=request.getSession();  
session.setAttribute(cookie.getName(),cookie.getValue());  
	     out.println("welcome"+cookie.getValue());
	     
	    
	  }
	 }
	
} 

 out.println("<form action='successimage.jsp' method='post' enctype='multipart/form-data'>Select Your Image if you want :<input type='file' name='fileName'/> </br> <input type='submit' value='Upload'/>  </form>"+"<br/>");
//response.sendRedirect("successimage.jsp");
 %>
</body>
</html>