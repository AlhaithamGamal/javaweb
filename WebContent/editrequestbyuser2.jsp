<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@page import="market.BuyProductDao" %>
<%@page import="java.util.*" %>
<%@page import="market.Transaction" %>
<body>
<jsp:useBean id="s" class="market.Transaction"></jsp:useBean>
<jsp:setProperty property="*"  name="s"/>
<%
String name="",userName="",password="",mobile="",gender="",country="",city="",address="", email="";
HttpSession sessions=request.getSession(false);  
name=(String)sessions.getAttribute("name"); 
userName=(String)sessions.getAttribute("username"); 
password=(String)sessions.getAttribute("password"); 
mobile=String.valueOf(sessions.getAttribute("mobile")); 
gender=(String)sessions.getAttribute("gender"); 
country=(String)sessions.getAttribute("country"); 
city=(String)sessions.getAttribute("city"); 
address=(String)sessions.getAttribute("address"); 
email=(String)sessions.getAttribute("email"); 
int num=BuyProductDao.updateRequest(s);
if(num>0){
response.sendRedirect("viewrequestbyuser.jsp");
out.println("updated successfully!!!");
}
else{
	out.println("sorry not updated !!!");
}

%>
</body>
</html>