

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="database.UserDao"%> 
<%@page import="com.readerenvi.insert.Book,com.readerenvi.insert.Insert1"%> 
<jsp:useBean id="b" class="com.readerenvi.insert.Book"></jsp:useBean>
<jsp:setProperty property="*" name="b"></jsp:setProperty>
<%  
UserDao.deleteBook(b);
response.sendRedirect("deletebook.jsp");  
%>  
