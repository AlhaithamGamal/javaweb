<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MyProfile</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<jsp:include page="profileindex.jsp"></jsp:include>
<% String name="",userName="",password="",mobile="",gender="",country="",city="",address="", email="";
/* Cookie[] cookies = request.getCookies();
if (cookies != null) {
	 for (Cookie cookie : cookies) {
	   if (cookie.getName().equals("name")) {
       name=cookie.getValue();
	    
	  }
	   if (cookie.getName().equals("username")) {
	        userName=cookie.getValue();
		    
		  }
	   if (cookie.getName().equals("password")) {
	        password=cookie.getValue();
		    
		  }
	   if (cookie.getName().equals("mobile")) {
	        mobile=cookie.getValue();
		    
		  }
	   if (cookie.getName().equals("gender")) {
	        gender=cookie.getValue();
		    
		  }
	   if (cookie.getName().equals("country")) {
	        country=cookie.getValue();
		    
		  }
	   if (cookie.getName().equals("city")) {
	        city=cookie.getValue();
		    
		  }
	   if (cookie.getName().equals("address")) {
	        address=cookie.getValue();
		    
		  }
	   if (cookie.getName().equals("email")) {
	     email=cookie.getValue();
		    
		  }
	 } */
	 
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

%>
<h1> welcome wish you a happy shopping '<%=name%>' </h1>
<div class='form-group'>
  <form action='MarketServletEdit' method='post' >
  <label for="Name">Name:</label>
    <input type="text" name="name" required value='<%=name%>'/> <br>
    <label for="UserName">UserName:</label>
    <input type="text"  name="username" readonly required value='<%=userName%>'/> <br>
    <label for="password">Password:</label>
    <input type="password" name="password" required value='<%=password%>'/> <br>
       <label for="Mobile">Mobile:</label>
    <input type="tel" name="mobile" required value='<%=mobile%>'/> <br>
     <label for=Gender">Gender:</label>
    <input type="text" name="gender" required readonly  value='<%=gender%>'/> <br>
      <label for=e-mail">E-mail:</label>
    <input type="email" name="email" required  value='<%=email%>'/> <br>
    <label for="country">Country</label>
     <input type="text"  name="country" required value='<%=country%>'/> <br>
      <label for="city">City</label>
     <input type="text"  name="city" required value='<%=city%>'/> <br>
    <label for="Address:">Address:</label>
    <textarea  name="address" rows="4" cols="50" required > '<%=address%>'</textarea>
    <br>
    <input type="submit" value="Edit">
  </form>

</div>

</body>
</html>