<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@page import="market.Product" %>
<%@page import="market.ProductDao" %>
<%@page import="market.*" %>
<%@page import="java.util.*" %>
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
<li><a href='#home'>BuyAndSearch</a>  </li>
<li><a href='#home'>AllMerchandise</a>  </li>
<li><a href='#home'>ViewUsers</a>  </li>
<li><a href='viewrequests.jsp'>ViewRequests</a>  </li>
<li><a href='#home'>AddMerchandise</a>  </li>
</ul>
</div>
<br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br>

<div class='container'>
<p>product information</p>
<table class='table table-bordered'>
<thead>
<tr>
<th>RequestID</th>
<th>UserName</th>
<th>Address</th>
<th>ProductName</th>
<th>QuantityWanted</th>
<th>Date</th>
<th>ProductPrice</th>
<th>TotalPrice</th>
</tr>
</thead>
 <%
List<Transaction> list=BuyProductDao.getAllRecordsTransactions();
 
//request.setAttribute("list",list);

%>
<%for (Transaction t :list){ %>
 <tbody>
 <tr> 
<td><%=t.getRequestid()%>  </td>
<td><%=t.getUsername() %>  </td>
<td><%=t.getAddress()%>  </td>
<td><%=t.getProductname()%> </td>
<td><%=t.getQuantitywanted() %> </td>
<td><%=t.getDate() %> </td>
<td><%=t.getProductprice() %> </td>
<td><%=t.getTotalprice()%> </td>
<td><a href="deleterequest.jsp?id=<%=t.getRequestid()%>">Delete</a></td>
<td><a href="editrequest.jsp?id=<%=t.getRequestid()%>">Edit</a></td>
</tr>
 <%
} 
%>
 </tbody>
</table>

<h1 class='copyright'>All Copies Reserved &copy; Alhaitham 2018-2019</h1>


</body>
</html>