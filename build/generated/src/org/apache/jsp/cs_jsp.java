package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.sql.*;
import java.util.*;;
import database.UserDao;
import bean.User;;
import com.readerenvi.insert.Book;
import com.readerenvi.insert.Insert1;
import db_utility.DBUtility;

public final class cs_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

      System.out.print("a");
	     final Connection con;
		try {
		// connects to the database
		Blob image = null;
		byte[] imgData = null ;
		 UserDao dao=new UserDao();
		 
	     Book book=new Book();
	     dao.addIndex(book);
	   /*   int id=Integer.parseInt(request.getParameter("id")); 
	     Book e=Dao.getBookById(id);  */
	     con = DBUtility.getConnection();
		System.out.print("c");
		System.out.print(con);
		PreparedStatement preparedStatement;
		 preparedStatement = con.prepareStatement("SELECT * FROM book where Branch='cse' order by id desc");
		 ResultSet result = preparedStatement.executeQuery(); 
		while (result.next()) {
			// gets file name and file blob data
			 String id=result.getString(1);
			String BookId=result.getString(2);
		   
			String BookName = result.getString(3);
			String AuthorName = result.getString(4);
			image=result.getBlob(5);
			 imgData = image.getBytes(1,(int)image.length());
			    String imgDataBase64=new String(Base64.getEncoder().encode(imgData));
			String Category =result.getString(6);
			String Branch=result.getString(7);
			
			System.out.print(BookName);
			
			
			
      out.write("\n");
      out.write("                        \n");
      out.write("                        ");
 }
		}
	catch(Exception e)
	{
		e.printStackTrace();
	}
 
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("     <title>::ReaderStack::</title>\n");
      out.write("    <!--<link href=\"css/jquery.bxslider.css\" rel=\"stylesheet\" type=\"text/css\">-->\n");
      out.write("    <link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("    <!-- Start WOWSlider.com HEAD section -->\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"engine1/style.css\" />\n");
      out.write("<script type=\"text/javascript\" src=\"engine1/jquery.js\"></script>\n");
      out.write("<!-- End WOWSlider.com HEAD section -->\n");
      out.write("<style>\n");
      out.write("    </style>\n");
      out.write("    \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <div id=\"wrapper\">\n");
      out.write("    <div id=\"header\">\n");
      out.write("        <div id=\"subheader\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("        <p>Gain Knowledge</p>\n");
      out.write("    <a href=\"#\">About us</a>\n");
      out.write("    <a href=\"#\">FAQ</a>\n");
      out.write("    <a href=\"#\">Help</a>\n");
      out.write("    <a href=\"#\">Contact Us</a>\n");
      out.write("    <a href=\"index.html\">Home</a>          \n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("        <!--==main header==-->\n");
      out.write("        <div id=\"main-header\">\n");
      out.write("            <!--logo-->\n");
      out.write("            <div id=\"logo\">\n");
      out.write("            <span id=\"ist\" >Reader</span>\n");
      out.write("            <span id=\"iist\" >Envi</span>\n");
      out.write("            </div>\n");
      out.write("            <!--search area-->\n");
      out.write("            <div id=\"search\">\n");
      out.write("            <form action=\"\">\n");
      out.write("                <input class=\"search-area\" type=\"text\" name=\"text\" placeholder=\"search here\">\n");
      out.write("                <input class=\"search-btn\" type=\"submit\" name=\"submit\" value=\"search\" style=\"margin-top:-180px;\">\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("            <!--user menu-->\n");
      out.write("            <div id=\"user-menu\">\n");
      out.write("            <li><a href=\"register.html\">Register</a></li>\n");
      out.write("                <li><a href=\"#\">Login</a></li>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("        <!--navigation bar-->\n");
      out.write("        <div id=\"navigation\">\n");
      out.write("        <nav>\n");
      out.write("            <a href=\"accademics.html\">Academics</a>\n");
      out.write("            <a href=\"#\">Coding</a>\n");
      out.write("            <a href=\"#\">Motivational</a>\n");
      out.write("            <a href=\"#\">Comics</a>\n");
      out.write("            </nav>\n");
      out.write("        </div>\n");
      out.write("        </div> \n");
      out.write("        <label>For first year click this</label>\n");
      out.write("        <h1 style=\"text-decoration: none; background-color: skyblue; color: green; \"><a href=\"\" style=\"text-decoration: none;\"> FIRST YEAR</a></h1>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
