<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ShowUserInfo To UpdateUser</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
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
.navdiv{
margin:auto;
}
.nav{
margin:0;
padding:0;
background-color:black;
}
.copyright{

text-align:center;
font-weight:bold;
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
</style>
</head>
<%@page import="market.Customer" %>
<%@page import="market.CustomerDao" %>
<body>
<%
String ids=request.getParameter("id");
Customer c=CustomerDao.getAllRecordsByIdEdit(ids);
%>
<div class='navdiv'>
<ul class='nav'>
<li><a href='index.jsp'>Home</a> </li>
<li><a href='#About'>About</a> </li>
<li><a href='SignUp.jsp'>SignUp</a> </li>
<li><a href='SignIn.jsp'>SignIn</a> </li>
<li><a href='profileadmin.jsp'>MyProfile</a> </li>
<li><a href='logout.jsp'>LogOut</a> </li>
<li><a href='viewrequestsbyuser.jsp'>ViewMyRequests</a>  </li>
<li><a href='allmechandiseusers.jsp'>AllMerchandise</a>  </li>
</ul>
</div>
<div class='form-group'>
  <form action='edituser2.jsp' method='post' >
  <label for="Name">Name:</label>
    <input type="text" name="name" required value='<%=c.getName()%>'/> <br>
    <label for="UserName">UserName:</label>
    <input type="text"  name="username" readonly required value='<%=c.getUsername()%>'/> <br>
    <label for="password">Password:</label>
    <input type="password" name="password" required value='<%=c.getPassword()%>'/> <br>
       <label for="Mobile">Mobile:</label>
    <input type="tel" name="mobile" required value='<%=c.getMobile()%>'/> <br>
     <label for=Gender">Gender:</label>
    <input type="text" name="gender" required readonly  value='<%=c.getGender()%>'/> <br>
      <label for=e-mail">E-mail:</label>
    <input type="email" name="email" required  value='<%=c.getEmail()%>'/> <br>
    <label for="country">Country</label>
     <input type="text"  name="country" required value='<%=c.getCountry()%>'/> <br>
      <label for="city">City</label>
     <input type="text"  name="city" required value='<%=c.getCity()%>'/> <br>
    <label for="Address:">Address:</label>
    <textarea  name="address" rows="4" cols="50" required > '<%=c.getAddress()%>'</textarea>
    <br>
    <input type="submit" value="Edit">
  </form>

</div>
<br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br>
<h1 class='copyright'>All Copies Reserved &copy; Alhaitham 2018-2019</h1>

</body>
</html>