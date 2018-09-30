<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AddProduct</title>
<%@ page import="com.oreilly.servlet.MultipartRequest" %> 
<%@ page import="java.sql.*" %> 
<%@page import="market.*" %>
<%@page import="java.net.*" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
<li><a href='additem.jspe'>Buy</a>  </li>
<li><a href='#home'>AllMerchandise</a>  </li>
<li><a href='viewuser.jsp'>ViewUsers</a>  </li>
<li><a href='viewrequests.jsp'>ViewRequests</a>  </li>
<li><a href='#home'>AddMerchandise</a>  </li>
</ul>
</div>
 <div class='form-group' >
  <form action='MarketServletProduct' method='post' enctype='multipart/form-data' >
  <label for="Productname">ProductName:</label>
    <input type="text" name="productname" required placeholder="Your product name.."/>
  
    <label for="productquantity">ProductQuantity:</label>
    <input type="text"  name="productquantity" required placeholder="Your product quantity.."/>

    <label for="productprice">ProductPrice:</label>
    <input type="text" name="productprice" required placeholder="Your product price.."/>
       <label for="ProductType">ProductType:</label>
       <br>
    <input type="text" name="producttype" required placeholder="Yourproduct type.."/>
    <br>
     <label for="currency">Currency:</label>
     <br>
     <select name="currency">
  <option name="currency" >L.E</option>
  <option name="currency">$</option>
</select>
<br>
     <label for="productimage">ProductImage:</label>
  <input type='file' name='fileName' required/> <br>  
    <input type="submit" value="Submit">
  </form>

</div>
<br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br>



<h1 class='copyright'>All Copies Reserved &copy; Alhaitham 2018-2019</h1>

</body>
</html>