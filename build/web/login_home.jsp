
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.sql.*,java.util.*;"%>
<%@page import= "database.UserDao,bean.User;"%>



<%
    String user=request.getParameter("mail");
    session.putValue("mail",user);
    String pass=request.getParameter("pwd");
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/readerenvi1","root","1234");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select pass from register where mail='"+user+"'");
    if(rs.next())
    { 
    if(rs.getString(1).equals(pass))
    {
        
        
    } 
    else
    {
        out.println("Invalid username and password");
        String site = "login.html" ;
        response.setStatus(response.SC_MOVED_TEMPORARILY);
        response.setHeader("Location", site);
        
    }
        }
    }
    catch(Exception e)
    {
        e.printStackTrace();
    } 
    /*this code is for importing the values of the database.*/
           
    %> 
<html>
<head>
     <title>::ReaderStack::</title>
    <!--<link href="css/jquery.bxslider.css" rel="stylesheet" type="text/css">-->
    <link href="style.css" rel="stylesheet" type="text/css">
    <!-- Start WOWSlider.com HEAD section -->
<link rel="stylesheet" type="text/css" href="engine1/style.css" />
<script type="text/javascript" src="engine1/jquery.js"></script>
<!-- End WOWSlider.com HEAD section -->
    </head>
    <body>
        <!--jsp code-->
        
        <!-- jsp code ends-->
        
        
    <div id="wrapper">
    <div id="header">
        <div id="subheader">
            <div class="container">
        <p>Gain Knowledge</p>
    <a href="admin.html">Admin</a>    
    <a href="#">About us</a>
    <a href="#">FAQ</a>
    <a href="#">Help</a>
    <a href="#">Contact Us</a>
    <a href="#">Home</a>          
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
            <li><a href="#"><%out.println(user);%></a></li>
            <li style="margin-top: 50px;"><a href="./Logout">Logout</a></li>
            </div>
        </div>
        </div>
        <!--navigation bar-->
        <div id="navigation">
        <nav>
            <a href="accademics.html">Accademics</a>
            <a href="#">Coding</a>
            <a href="#">Motivational</a>
            <a href="#">Comics</a>
            </nav>
        </div>
        </div>
        <!--home slider
        <div id="slider">
        <ul class="bxslider">
            <li><img src="read5.jpg"></li>
            <li><img src="read3.jpg"></li>
            <li><img src="read4.jpg"></li>
            
            </ul>
        </div>
    
        <script
  src="https://code.jquery.com/jquery-2.2.4.js"
  integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
  crossorigin="anonymous"></script>
        <script src="js/jquery.bxslider.min.js"></script>
        <script src="js/reader1.js"></script>

-->    
        
        <!-- Start WOWSlider.com BODY section -->
<div id="wowslider-container1">
<div class="ws_images"><ul>
		<li><img src="data1/images/read2.jpg" alt="read2" title="read2" id="wows1_0"/></li>
		<li><img src="data1/images/read3.jpg" alt="read3" title="read3" id="wows1_1"/></li>
		<li><a href="http://wowslider.net"><img src="data1/images/read4.jpg" alt="image slider" title="read4" id="wows1_2"/></a></li>
		<li><img src="data1/images/read5.jpg" alt="read5" title="read5" id="wows1_3"/></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title="read2"><span><img src="data1/tooltips/read2.jpg" alt="read2"/>1</span></a>
		<a href="#" title="read3"><span><img src="data1/tooltips/read3.jpg" alt="read3"/>2</span></a>
		<a href="#" title="read4"><span><img src="data1/tooltips/read4.jpg" alt="read4"/>3</span></a>
		<a href="#" title="read5"><span><img src="data1/tooltips/read5.jpg" alt="read5"/>4</span></a>
	</div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.net">html5 slideshow</a> by WOWSlider.com v8.8</div>
<div class="ws_shadow"></div>
</div>	
<script type="text/javascript" src="engine1/wowslider.js"></script>
<script type="text/javascript" src="engine1/script.js"></script>
<!-- End WOWSlider.com BODY section -->
        
        <hr>
        <p style="font-size: 25px; margin-left: 30px;"><big><b style="font-size: 50px;">R</b></big>
    eader envi is a learning website through which the user can download the ebooks by making a one time registration. 
    <b>Reader Envi</b> provides different journals with different contents  </p>


        
    </body>
</html>

       
