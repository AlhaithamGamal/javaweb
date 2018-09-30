<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home</title>
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
  </style>
</head>
<body >
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
<br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br> <br><br><br><br>
<h1 class='copyright'>All Copies Reserved &copy; Alhaitham 2018-2019</h1>

</body>
</html>