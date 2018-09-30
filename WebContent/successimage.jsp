<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>  
<%@ page import="java.sql.*" %> 
<%@page import="market.*" %>
<%@page import="java.net.*" %>
<%@page import="java.io.*" %>
<%@page import="java.util.*" %>
</head>
<body>
<jsp:include page="SignIn.jsp"></jsp:include>
<% String userNameCookie="";String filenames="";
Cookie[] cookies = request.getCookies();
if (cookies != null) {
	 for (Cookie cookie : cookies) {
	   if (cookie.getName().equals("username")) {
	     //do something
	     //value can be retrieved using #cookie.getValue()
	     out.println("welcome"+cookie.getValue());
	     
	    
	  }
	 }
	
}
else{
	 out.println(cookies[0].getValue());
}
HttpSession sessions=request.getSession(false);  
String n=(String)sessions.getAttribute("username");  
out.print("Hello "+n);  
MultipartRequest m = new MultipartRequest(request, "C:\\Users\\Alhaitham Gamal\\eclipse\\market\\WebContent");
out.println("successfully image added also");
out.println("after cookies");
//File file2=new File(fileName);
//File file=new File(cookies[1].getValue());
//boolean rename=file2.renameTo(file);
//File (or directory) with old name
String fileName=request.getParameter("fileName");
//PrintWriter writer = new PrintWriter(userNameCookie, "UTF-8");
//File (or directory) with new name
File file2 = new File("C:\\Users\\Alhaitham Gamal\\eclipse\\market\\WebContent"+"\\"+n);
File file3=new File("C:\\Users\\Alhaitham Gamal\\eclipse\\market\\WebContent"+"\\"+n+".txt");
file3.createNewFile();
Enumeration files = m.getFileNames();

while(files.hasMoreElements() )
  {
    String upload = (String)files.nextElement();
    File filename=new File(m.getOriginalFileName(upload));
    filename.renameTo(file3);
    System.out.println(filename);
}

//Rename file (or directory)





%>

</body>
</html>