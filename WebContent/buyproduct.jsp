<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BuyTheProduct</title>
</head>
<body>
<%@ page import="com.oreilly.servlet.MultipartRequest" %> 
<%@ page import="java.sql.*" %> 
<%@page import="market.*" %>
<%@page import="java.net.*" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="scriptme.js"></script>
  <style>
  body{
  
  background-color:#b8b894;
     background-image:url("online-shoppin.jpg")
  }
  input[type=text],input[type=e-mail],input[type=password], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
textarea {
    width: 100%;
    height: 150px;
    padding: 12px 20px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    background-color: #f8f8f8;
    font-size: 16px;
    resize: none;
}

input[type=submit] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size:30px;
    font-weight:bold;
}

input[type=submit]:hover {
    background-color: #45a049;
}

div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
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
<li><a href='allmechandiseusers.jsp'>AllMerchandise</a>  </li>
<li><a href='viewrequestsbyuser.jsp'>ViewMyRequests</a>  </li>
</ul>
</div>
<% String name="",userName="",password="",mobile="",gender="",country="",city="",address="", email="";
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
String ids=request.getParameter("id");
Product p=ProductDao.getAllRecordsByIdEditProduct(ids);
if(userName.equals(null)){
	response.sendRedirect("SignIn.jsp");
}
%>
 <div class='form-group' >
  <form action='MarketTransaction2' method='post'  >
  <label for="username">UserName:</label><br>
    <input type="text" name="username" required readonly value='<%=userName%>'/><br>
  
    <label for="address">Address:</label> <br>
    <input type="text"  name="address" required readonly value='<%=address%>' /><br>
     <label for="productname">ProductName:</label> <br>
    <input type="text"  name="productname" required readonly value='<%=p.getProductname()%>' /><br>
    <label for="quantitywanted">QuantityWanted:</label> <br>
    <input type="text" name="quantitywanted" id="quantitywanted"required onkeyup="myFunction()"  /> <br> 
     <label for="productprice">ProductPrice PerEach Kilo/item:</label> <br>
    <input type="text" name="productprice" id="productprice" required readonly  value='<%=p.getProductprice()%>' />
    <br>
     <label for="totalprice">TotalPrice:</label> <br>
    <input type="text" name="totalprice" id="totalprice" required readonly    />
     <label for="currency">Currency:</label> <br>
     <input type="text" name="currency" required readonly value='<%=p.getCurrency() %>'  /> <br> 
<br>  
    <input type="submit" value="Order">
  </form>

</div>
<br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br>



<h1 class='copyright'>All Copies Reserved &copy; Alhaitham 2018-2019</h1>
</body>
</html>