<%-- 
    Document   : viewusers
    Created on : Sep 26, 2018, 12:38:37 AM
    Author     : GV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>  
  
<html>
<head>
     <title>::viewusers::</title>
    <!--<link href="css/jquery.bxslider.css" rel="stylesheet" type="text/css">-->
    <link href="style.css" rel="stylesheet" type="text/css">
    <!-- Start WOWSlider.com HEAD section -->
<link rel="stylesheet" type="text/css" href="engine1/style.css" />
<script type="text/javascript" src="engine1/jquery.js"></script>
<!-- End WOWSlider.com HEAD section -->
<style>
    </style>
    
    </head>
    <body> 
  
<%@page import="database.UserDao,bean.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
 
  
<%  
List<User> list=UserDao.getAllRecords();  
request.setAttribute("list",list);  
%>  


<div id="wrapper">
    <div id="header">
        <div id="subheader">
            <div class="container">
        <p>Gain Knowledge</p>
        <a href="admin.html">Logout</a>
    <a href="#">About us</a>
    <a href="#">FAQ</a>
    <a href="#">Help</a>
    <a href="#">Contact Us</a>
    <a href="index.html">Home</a>          
        </div>
        </div>
        <!--==main header==-->
        <div id="main-header">
            <!--logo-->
            <div id="logo">
            <span id="ist" >Reader</span>
            <span id="iist" >Envi</span>
            </div>
            <!--search area-->
            <div id="search">
            <form action="">
                <input class="search-area" type="text" name="text" placeholder="search here">
                <input class="search-btn" type="submit" name="submit" value="search">
                </form>
            </div>
            <!--user menu-->
            <div id="user-menu">
            <li><a href="register.html">Register</a></li>
                <li><a href="#">Login</a></li>
            </div>
        </div>
        </div>
        <!--navigation bar-->
        <div id="navigation">
        <nav>
            <a href="accademics.html">Academics</a>
            <a href="#">Coding</a>
            <a href="#">Motivational</a>
            <a href="#">Comics</a>
            </nav>
        </div>
        </div>
<h1 style="background-color: skyblue; color: green; text-align: center;">Users List</h1> 
    <center>
  
<table border="1" width="90%">  
    <tr style=" background-color: green; color: white; font: bold;"><th>Id</th><th>FirstName</th><th>LastName</th><th>Email</th>  
<th>Password</th><th>DOB</th><th>Address</th><th>Father</th>
<th>Mobile</th><th>Course</th><th>branch</th><th>Gender</th>  
<th>Edit</th><th>Delete</th></tr>
<c:forEach items="${list}" var="u">  
<tr style="background-color: #f1f1f1;"><td>${u.getId()}</td><td>${u.getfaname()}</td><td>${u.getlaname()}</td>  
<td>${u.getmail()}</td><td>${u.getpass()}</td><td>${u.getdob()}</td> 
<td>${u.getaddr()}</td><td>${u.getfname()}</td><td>${u.getphn()}</td>  
<td>${u.getcourse()}</td><td>${u.getbranch()}</td><td>${u.getgen()}</td>
<td><a href="editreg1.jsp?id=${u.getId()}">Edit</a></td>  
<td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr>  
</c:forEach>  
</table> 
    </center>
<br/><a href="reg1.html">Add New User</a>  
 
  
</body>  
</html>  
