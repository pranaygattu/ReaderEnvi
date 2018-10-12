<%-- 
    Document   : cs
    Created on : Sep 25, 2018, 2:21:33 PM
    Author     : GV
--%>




<%@page import="db_utility.DBUtility"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.sql.*,java.util.*;"%>
<%@page import= "database.UserDao,bean.User;"%>
<%@page import="com.readerenvi.insert.Book,com.readerenvi.insert.Insert1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



 
<!DOCTYPE html>
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
                <input class="search-btn" type="submit" name="submit" value="search" style="margin-top:-180px;">
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
        
        <h1 style="text-decoration: none; background-color: skyblue; color: green; text-align: center; "><a href="" style="text-decoration: none;">COMPUTER SCIENCE ENGINEERING</a></h1>
    <!-------------------main-->
    
    <%  
List<Book> list=UserDao.getAllBooks();  
request.setAttribute("list",list);  
%>  
    <center>
    <table border="1" width="25%" cellpadding="5">
    <thead> 
               <th colspan="5">Uploaded Files</th>        
            </thead>

<tbody>
                   
                        <tr class="trData" style="background-color: green; color: white;">
                        <th><font face="Times New Roman">ID</font></th>
                        <th><font face="Times New Roman">BookID</font></th>
                        <th><font face="Times New Roman">BookName</font></th>
                        <th><font face="Times New Roman">AuthorName</font></th>
                        <th><font face="Times New Roman">Download</font></th>
                        
                        
                        
                        
<%
                        try
                        {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/readerenvi1","root","1234");
                             
                                

                                PreparedStatement ps=con.prepareStatement("select * from book where Branch='CSE'");
                                ResultSet rs=ps.executeQuery();
                                
                                  
                                
                                while(rs.next())
                                {   
                            %>
                                    <c:forEach  items="${list}" var="b">
                                        <tr class="trData1" style="background-color: #f1f1f1;">
                                        <td><c:out value="${b.getid()}"/></td>
                                        <td><c:out value="${b.getBookId()}"/></td>
                                        <td><c:out value="${b.getBookName()}"/></td>
                                        <td><c:out value="${b.getAuthorName()}"/></td>
                                        <td><center><a href="view_file_download.jsp?id=<%out.print(rs.getString("id"));%>">Download</a></center></td>
                                        </tr>
                                    </c:forEach>
                            <%
                                }
                            %>
                            </tbody> 
        </table>
    </center>
                            
                            <%
                                rs.close();
                                con.close();
                                con.close();
                        }catch(Exception e){e.printStackTrace();}    
                        
                    %>
    
    
    
    
    
    
    
    </body>
</html>
