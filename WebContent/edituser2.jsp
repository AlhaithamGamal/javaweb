<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UpdateUser</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<%@page import="market.CustomerDao" %>
<body>
<jsp:useBean id="s" class="market.Customer"></jsp:useBean>
<jsp:setProperty property="*" name="s"/>
<%

int num=CustomerDao.update(s);
if(num>0){
response.sendRedirect("viewuser.jsp");
out.println("updated successfully!!!");
}
else{
	response.sendRedirect("viewuser.jsp");
	out.println("sorry not updated !!!");
}
%>
</body>
</html>