<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="db_utility.DBUtility"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@page import="java.io.*,java.sql.*,java.util.*;"%>
<%@page import= "database.UserDao,bean.User;"%>
<%@page import="com.readerenvi.insert.Book,com.readerenvi.insert.Insert1" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View File</title>
    </head>
    <body>
        
        <%  
            String id=(request.getParameter("id"));
            
            Blob file = null;
            byte[ ] fileData = null ;

            try
            {    
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/readerenvi1","root","1234");
            
                String sqlString = "SELECT photo FROM book WHERE id = '"+id+"'";
                Statement myStatement = con.createStatement();
                
                ResultSet rs=myStatement.executeQuery(sqlString);
                
                if (rs.next()) 
                {
                    file = rs.getBlob("photo");
                    fileData = file.getBytes(1,(int)file.length());
                } else 
                {
                    out.println("file not found!");
                    return;
                }
                
                response.setContentType("application/pdf");
                response.setHeader("Content-Disposition", "inline");
                response.setContentLength(fileData.length);
                
                OutputStream output = response.getOutputStream();
                output.write(fileData);
                
                output.flush();
                
            } catch (SQLException ex) {
                Logger.getLogger(Logger.class.getName()).log(Level.SEVERE, null, ex);
            
            } 
        %>
        
        <br><br>
        <a href="main_page.jsp">Go to Main Page...</a>        
                
        <div style="position: relative">
            <div style="position: fixed ; bottom: 0 ; width:100% ; text-align:center ">
                <p><a href="https://www.youtube.com/user/TechWorld3g?sub_confirmation=1">CLICK HERE TO SUBSCRIBE</a></p>
            </div>
        </div>
        
    </body>
</html>