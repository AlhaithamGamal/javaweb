<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@page import="market.Product" %>
<%@page import="market.ProductDao" %>
<%@page import="market.*" %>
<%@page import="java.util.*" %>
<%@page import="market.Transaction" %>
<meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<title>ViewProduct</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  body{
  
  background-color:#b8b894;
   background-image:url("online-shoppin.jpg")
  }
  ul li a{
text-decoration:none;

}
 a:link, a:visited {
    background-color: #333;
    color: white;
    padding: 14px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-weight:bold;
    font-size:18px;
}
a:hover{
background-color:green;
}
a:active{
background:red;}
ul li{
 display: inline-block;
   list-style-type: none;
    font-weight:bold;
    font-size:20px;
    padding:5px;
}
.copyright{

text-align:center;
font-weight:bold;
}
.navdiv{
margin:auto;
}
.nav{
margin:0;
padding:0;
background-color:black;
}
div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
</style>
</head>
<body>
<div class='navdiv'>
<ul class='nav'>
<li><a href='index.jsp'>Home</a> </li>
<li><a href='#About'>About</a> </li>
<li><a href='SignUp.jsp'>SignUp</a> </li>
<li><a href='SignIn.jsp'>SignIn</a> </li>
<li><a href='profile.jsp'>MyProfile</a> </li>
<li><a href='logout.jsp'>LogOut</a> </li>
<li><a href='viewitem.jsp'>AllMerchandise</a>  </li>
<li><a href='buyproduct.jsp'>Buy</a>  </li>
<li><a href='viewrequestsbyuser.jsp'>ViewMyRequests</a>  </li>
</ul>
</div>
<br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br>

<div class='container'>
<p>product information</p>
<table class='table table-bordered'>
<thead>
<tr>
<th>RequestID</th>
<th>Address</th>
<th>ProductName</th>
<th>QuantityWanted</th>
<th>Date</th>
<th>TotalPrice</th>
</tr>
</thead>
 <%String name="",userName="",password="",mobile="",gender="",country="",city="",address="", email="";
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
 System.out.print(userName);
List<Transaction> list=BuyProductDao.getAllRecordsTransactionsOfUser(userName);
//request.setAttribute("list",list);

%>
<%for (Transaction t :list){ %>
 <tbody>
 <tr> 
<td><%=t.getRequestid()%>  </td>
<td><%=t.getAddress()%>  </td>
<td><%=t.getProductname()%> </td>
<td><%=t.getQuantitywanted() %> </td>
<td><%=t.getDate() %> </td>
<td><%=t.getTotalprice()%> </td>
<td><a href="editrequestbyuser.jsp?id=<%=t.getRequestid()%>">Edit</a></td>
</tr>
 <%
} 
%>
 </tbody>
</table>

<h1 class='copyright'>All Copies Reserved &copy; Alhaitham 2018-2019</h1>


</body>
</html>