<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.sql.*,java.util.*,java.lang.Exception;"%>

<%
    String faname=request.getParameter("finame");
    String laname=request.getParameter("laname");
    String mail=request.getParameter("email");
    String pass=request.getParameter("pass");
    String dob=request.getParameter("dob");
    String addr=request.getParameter("addr");
    String fname=request.getParameter("fname");
    int phn=Integer.parseInt(request.getParameter("phn"));
    String course=request.getParameter("course");
    String branch=request.getParameter("branch");
    String gender=request.getParameter("gen");
    try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/readerenvi","root","1234");
    Statement st=con.createStatement();
    int i=st.executeUpdate("insert into register values('"+faname+"','"+laname+"','"+mail+"','"+pass+"','"+dob+"','"+addr+"','"+fname+"','"+phn+"','"+course+"','"+branch+"','"+gender+"')");
   if(i==1)
   {
       out.print("values are inserted successfully");
       response.sendRedirect("index.html");
   }
   else{
       out.print("values are not inserted.");
   }
    }
catch(Exception ex)
{
  ex.printStackTrace();
}
           
%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOME</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
