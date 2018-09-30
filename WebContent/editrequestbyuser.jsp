<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update MyRequest</title>
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
<%
String ids=request.getParameter("id");
Transaction t=BuyProductDao.getAllRecordsByTransaction(Integer.parseInt(ids));
%>
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
 <div class='form-group' >
  <form action='editrequestbyuser2.jsp' method='post'  >
  <label for="RequestID:">RequestID:</label> <br>
    <input type="text" name="requestid" required value='<%=t.getRequestid()%>' readonly/>
  
    <label for="UserName:">UserName:</label> <br>
    <input type="text"  name="username" required readonly value='<%=t.getUsername()%>'  readonly/>
        <label for="Address:">Address:</label> <br>
    <input type="text"  name="address" required  value='<%=t.getAddress()%>'  />

    <label for="ProductName:">ProductName:</label> <br>
    <input type="text" name="productname" required value='<%=t.getProductname()%>' readonly/> <br>
        <label for="ProductPrice:">ProductPrice:</label> <br>
    <input type="text" name="productprice" required value='<%=t.getProductprice()%>' readonly/> <br>
       <label for="QuantityWanted:">QuantityWanted:</label> <br>
    <input type="text" name="quantitywanted" required value='<%=t.getQuantitywanted()%>' onkeyup="myFunction()" />
     <label for="date">Date:</label> <br>
     <input type="text" name="date" readonly required value='<%=t.getDate()%>'  />
       <label for="totalprice">TotalPrice:</label> <br>
     <input type="text" name="totalprice"  required readonly value='<%=t.getTotalprice()%>'  />
    <input type="submit" value="Update">
  </form>

</div>
<br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br>



<h1 class='copyright'>All Copies Reserved &copy; Alhaitham 2018-2019</h1>
</body>
</html>