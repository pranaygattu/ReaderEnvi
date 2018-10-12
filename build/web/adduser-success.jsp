<%-- 
    Document   : adduser-success
    Created on : Sep 26, 2018, 12:20:17 AM
    Author     : GV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Add User Success</title>  
</head>  
<body>  
  
<p>Record successfully saved!</p>
<%
response.sendRedirect("login.html");  
%>
  
</body>  
</html>
