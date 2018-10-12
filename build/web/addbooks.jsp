<%-- 
    Document   : addbooks
    Created on : Oct 1, 2018, 12:17:56 AM
    Author     : GV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="nav.html"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <h1 style="color: green; background-color: skyblue; text-align: center;">Uploading Books data</h1>
        <form action="./Insert1" method="post" enctype="multipart/form-data" style="margin-top:50px;">
            <label style="margin-left: 465px;"><b>BookID</b></label><br>
            <center><input type="text" id="BookId" name="BookId" required=""style="border: none; padding: 10px; width: 30%; background-color: #f1f1f1; margin: 15px 0 10px 0;"><br></center>
            <label style="margin-left: 465px;"><b>BookName</b></label><br>
            <center><input type="text" id="BookName" name="BookName" required=""style="border: none; padding: 10px; width: 30%; background-color: #f1f1f1; margin: 15px 0 10px 0;"><br></center>
            <label style="margin-left: 465px;"><b>Author</b></label><br>
            <center><input type="text" id="AuthorName" name="AuthorName"  required="" style="border: none; padding: 10px; width: 30%; background-color: #f1f1f1; margin: 15px 0 10px 0;"><br></center>
            <label style="margin-left: 465px;"><b>Select file</b></label><br>
            <center><input type="file" id="photo" name="photo" required="" style="border: none; padding: 10px; width: 30%; background-color: #f1f1f1; margin: 15px 0 10px 0;"><br></center>
            <label style="margin-left: 465px;"><b>Category</b></label><br>
            <center><select name="Category" required="" style="border: none; padding: 10px; width: 30%; background-color: #f1f1f1; margin: 15px 0 10px 0;">
                    <option selected="">Select</option>
                <option>Academics</option>
                <option>Coding</option>
                <option>Motivational</option>
                <option>Comics</option>
                </select><br></center>
            <label style="margin-left: 465px;"><b>Branch</b></label><br>
            <center><select name="Branch" required="" style="border: none; padding: 10px; width: 30%; background-color: #f1f1f1; margin: 15px 0 10px 0;">
                    <option selected="">Select</option>
                <option>CSE</option>
                <option>IT</option>
                <option>MECH</option>
                <option>EEE</option>
                <option>ECE</option>
                <option>CIVIL</option>
                </select><br></center>
            <center><input type="submit" value="Add" style="border: none; padding: 10px; width: 30%; background-color: green; margin: 15px 0 10px 0;"></center>
        </form>
    </body>
</html>
