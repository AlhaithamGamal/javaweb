<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<%@page import="market.ProductDao" %>
<body>
<jsp:useBean id="s" class="market.Product"></jsp:useBean>
<jsp:setProperty property="*"  name="s"/>
<%
System.out.println(s.getProductname());
System.out.println(s.getProducttype());
System.out.println(s.getProductquantity());
System.out.println(s.getProductprice());
System.out.println(s.getCurrency());
System.out.println("image name"+ s.getProductimage());
int num=ProductDao.update(s);
if(num>0){
response.sendRedirect("viewitem.jsp");
out.println("updated successfully!!!");
}
else{
	out.println("sorry not updated !!!");
}
%>

</body>
</html>