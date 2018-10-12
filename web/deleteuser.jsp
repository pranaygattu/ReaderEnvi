<%-- 
    Document   : deleteuser
    Created on : Sep 26, 2018, 3:15:23 AM
    Author     : GV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="database.UserDao"%>  
<jsp:useBean id="u" class="bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
UserDao.delete(u);  
response.sendRedirect("viewusers.jsp");  
%>  
