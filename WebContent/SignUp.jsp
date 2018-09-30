<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>SignUp</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  body{
  
  background-color:#b8b894;
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
  </style>
</head>
<body>
<h1> Welcome to Market Site Please fill this form to complete your registeration</h1>
  <div class='form-group' >
  <form action='MarketServlet' method='post' >
  <label for="Name">Name:</label>
    <input type="text" name="name" required placeholder="Your name.."/>
  
    <label for="UserName">UserName:</label>
    <input type="text"  name="username" required placeholder="Your username.."/>

    <label for="password">Password:</label>
    <input type="password" name="password" required placeholder="Your password.."/>
       <label for="Mobile">Mobile:</label>
       <br>
    <input type="tel" name="mobile" required placeholder="Yourmobile.."/>
    <br>
     <label for=e-mail">E-mail:</label>
     <br>
    <input type="email" name="email" placeholder="Your e-mail.."/>
    <br>
   <label for=Gender:">Gender:</label>
   <br>
      <input type="radio" name="gender" value="male" checked> Male<br>
  <input type="radio" name="gender" value="female"> Female<br>
  <input type="radio" name="gender" value="other"> Other<br><br>

    <label for="country">Country</label>
     <input type="text"  name="country" required placeholder="Your  country.."/>
      <br>
      <label for="city">City</label>
     <input type="text"  name="city" required placeholder="Your city.."/>
      <br>
    <label for="Address:">Address:</label>
    <textarea placeholder="Your Address with details" name="address" required></textarea>
    <br>
  </form>

</div>
</body>
</html>