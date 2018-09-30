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
<li><a href='#home'>AddMerchandise</a>  </li>
<li><a href='viewrequests.jsp'>ViewMyRequests</a>  </li>
</ul>
</div>
<br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br>

<div class='container'>
<p>product information</p>
<table class='table table-bordered'>
<thead>
<tr>
<th>ProductName</th>
<th>ProductAvailableQuantity</th>
<th>ProductPricePerone/Kg</th>
<th>ProductType</th>
<th>Currency</th>
<th>ProductImage</th>
</tr>
</thead>
 <%
List<Product> list=ProductDao.getAllRecordsProducts();
 
//request.setAttribute("list",list);

%>
<%for (Product p :list){ %>
 <tbody>
 <tr> 
<td><%=p.getProductname()%>  </td>
<td><%=p.getProductquantity() %>  </td>
<td><%=p.getProductprice()%>  </td>
<td><%=p.getProducttype()%> </td>
<td><%=p.getCurrency() %> </td>
<td><img src='<%=p.getProductimage()%>' alt='imageproducts' width='50px' height='50px' />  </td>
<td><a href="deleteproduct.jsp?id=<%=p.getProductname()%>">Delete</a></td>
<td><a href="editproduct.jsp?id=<%=p.getProductname()%>">Edit</a></td>
</tr>
 <%
System.out.println(p.getProductname()); 
 System.out.println(p.getProductquantity()); 
 System.out.println(p.getProductprice()); 
 System.out.println(p.getProducttype()); 
 System.out.println(p.getCurrency()); 
} %>
 </tbody>
</table>

<h1 class='copyright'>All Copies Reserved &copy; Alhaitham 2018-2019</h1>


</body>
</html>