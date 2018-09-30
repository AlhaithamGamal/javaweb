<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>InsertData</title>
<%@ page import="com.oreilly.servlet.MultipartRequest" %> 
<%@page import="market.CustomerDao" %>
<%@ page import="java.sql.*" %> 
<jsp:useBean id="c" class="market.Customer"></jsp:useBean>
<jsp:setProperty property="*" name="c"/>
</head>
<body>

<%
int j=CustomerDao.save(c);
if(j>0){
// Cookie cok=new Cookie("username",c.getUsername());
// cok.setMaxAge(0);
// response.addCookie(cok);
String name=c.getName();
Cookie cok2=new Cookie("name",name.toString());
cok2.setPath("/");
cok2.setMaxAge(6);
response.addCookie(cok2); 
request.getRequestDispatcher("successAdd.jsp").include(request, response);
}
else{
	out.print("<h1>something happened </h1>");
	
}
%>



</body>
</html>