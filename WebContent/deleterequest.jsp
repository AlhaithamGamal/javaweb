<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<%@page import="market.BuyProductDao" %>
<jsp:useBean id="s" class="market.Transaction"></jsp:useBean>
<jsp:setProperty property="*" name="s"/>
<body>
<%
int id=Integer.parseInt(request.getParameter("id"));
String userName=s.getUsername();
int status=BuyProductDao.deleteRequest(id,userName);
if(status>0){
response.sendRedirect("viewrequests.jsp");
}
else
{out.println("something happened");}
%>
</body>
</html>