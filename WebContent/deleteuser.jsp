<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="market.CustomerDao" %>
<jsp:useBean id="s" class="market.Customer"></jsp:useBean>
<jsp:setProperty property="*" name="s"/>
<body>
<%
String id=request.getParameter("id");
int status=CustomerDao.delete(id);
if(status>0){
response.sendRedirect("viewuser.jsp");
}
else
{out.println("something happened");}
%>
</body>
</html>