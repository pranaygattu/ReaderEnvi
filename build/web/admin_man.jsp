<%-- 
    Document   : admin_man
    Created on : Sep 24, 2018, 9:27:26 PM
    Author     : GV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
<head>
     <title>::ReaderStack::</title>
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
            <li><a href="#"><%=session.getAttribute("faname")%></a></li>
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

    <% 
        String uname=request.getParameter("user");
        String pass=request.getParameter("pwd");
    if((uname.equals("admin") && pass.equals("1234"))) {
        session.setAttribute("user",uname);
        out.println("successfully logged in");
    } 
    else {
    out.println("Invalid username and password");
        String site = "admin.html" ;
        response.setStatus(response.SC_MOVED_TEMPORARILY);
        response.setHeader("Location", site);
    }
    %>
    <center style=" margin: 80px;">
            <h1 style="background-color: orange; color: blue; ">Welcome to Admin Panel</h1>
        <table border="5px;" style=" padding: 10px; background-color: #f1f1f1;">
            <th style=" padding: 10px; background-color: green;"><a href="reg1.html" style=" color: white; text-decoration: none; padding: 10px;"><b>Add user</b></a></th>
            <th style="padding: 10px; background-color: blue;"><a href="viewusers.jsp" style=" color: white; text-decoration: none; padding: 10px;"><b>View users</b></a></th>
            <th style="padding: 10px; background-color: maroon;"><a href="addbooks.jsp" style=" color: white; text-decoration: none; padding: 10px;"><b>Add Books</b></a></th>
            <th style="padding: 10px; background-color: red;"><a href="booksData.jsp" style=" color: white; text-decoration: none; padding: 10px;"><b>Show Books</b></a></th>

        </table>
    </center>
    </body>
</html>
