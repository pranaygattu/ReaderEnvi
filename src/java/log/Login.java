/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package log;

import database.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author GV
 */
public class Login extends HttpServlet{
    private static final long serialVersionID=1L;

    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        String n=request.getParameter("mail");
        System.out.println(n);
        String p=request.getParameter("pwd");
        System.out.println(p);
        HttpSession session=request.getSession(false);
        if(session!=null)
            session.setAttribute("mail",n);
        if(UserDao.validate(n, p)){
            RequestDispatcher rs=request.getRequestDispatcher("/login_home.jsp");
            rs.forward(request, response);
        }
        else{
            RequestDispatcher rd=request.getRequestDispatcher("/login.html");
            rd.include(request, response);
        }
        
        }
    }
    
