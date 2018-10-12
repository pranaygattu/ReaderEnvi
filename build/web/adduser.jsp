<%-- 
    Document   : adduser
    Created on : Sep 26, 2018, 12:09:54 AM
    Author     : GV
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="database.UserDao" %>
<jsp:useBean id="u" class="bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
    int i=UserDao.save(u);
    if(i>0){
       response.sendRedirect("adduser-success.jsp");
    }
    else{
       response.sendRedirect("adduser-error.jsp");
    }
    %>

