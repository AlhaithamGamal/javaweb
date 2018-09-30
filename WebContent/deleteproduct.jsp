<%@page import="market.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DeleteProduct</title>
</head>
<body>
<%@page import="market.CustomerDao" %>
<jsp:useBean id="s" class="market.Product"></jsp:useBean>
<jsp:setProperty property="*" name="s"/>
<body>
<%
String id=request.getParameter("id");
int status=ProductDao.deleteProduct(id);
if(status>0){
response.sendRedirect("viewitem.jsp");
}
else
{out.println("something happened");}
%>
</body>
</html>