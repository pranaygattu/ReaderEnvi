<%-- 
    Document   : booksData
    Created on : Oct 4, 2018, 12:37:26 AM
    Author     : GV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="nav.html"%>
<%//@include file="Database.jsp" %>
<%@page import="database.UserDao,bean.*,java.util.*"%>
<%@page import="com.readerenvi.insert.Book,com.readerenvi.insert.Insert1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%  
List<Book> list=UserDao.getAllBooks();  
request.setAttribute("list",list);  
%>  
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="background-color: skyblue; color: green; text-align: center;">Displaying Books</h1>
    <center>
 <table border="1" class="tableData">
            
     <tr class="trData" style="background-color: green; color: white;">
     <th><font face="Times New Roman">ID</font></th>
     <th><font face="Times New Roman">BookID</font></th>
     <th><font face="Times New Roman">BookName</font></th>
     <th><font face="Times New Roman">AuthorName</font></th>
     <th><font face="Times New Roman">Category</font></th>
     <th><font face="Times New Roman">Branch</font></th>
     <th><font face="Times New Roman">Delete</font></th>
     
 <c:forEach  items="${list}" var="b">
 <tr class="trData1" style="background-color: #f1f1f1;">
<td><c:out value="${b.getid()}"/></td>
<td><c:out value="${b.getBookId()}"/></td>
<td><c:out value="${b.getBookName()}"/></td>
<td><c:out value="${b.getAuthorName()}"/></td>
<td><c:out value="${b.getCategory()}"/></td>
<td><c:out value="${b.getBranch()}"/></td>

<td><a href="deletebook.jsp?id=${b.id}"/>Delete</a></td>

</tr>
</c:forEach>
            </table>
    </center>
    </body>
</html>
