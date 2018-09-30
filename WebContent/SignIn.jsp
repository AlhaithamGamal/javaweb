<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<title>SignIn</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
 body{
 background-color: #b8b894;
 }
  input[type=submit]:hover {
    background-color: #33ff33;
}
 input[type=submit]{
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

  </style>
</head>
<body>
<h1>Welcome to Sign In System please Enter Your Username and Password to login into your account</h1>
  <form action="MarketServletSignIn" method='get'>
  <div class='me'>
      <label for="Username">Username:</label>
      <input type="text"  placeholder="Enter your username" name="username" required>
      <br>
      <label for="pwd">Password:</label>
      <input type="password"  placeholder="Enter password" name="password" required>
      <br>
      <label><input type="checkbox" name="remember" value="remember"> Remember me</label>
      <br>
    <button type="submit" >Submit</button>
    <br>
    <a href="forget.jsp">forget your password?</a>
    </div>
  </form>

</body>
</html>