<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body><% 
         HttpSession sessions=request.getSession();  
            sessions.invalidate();  
            response.sendRedirect("SignIn.jsp");
            out.print("You Have Been Loged Out see you later");
            
            %>
</body>
</html>