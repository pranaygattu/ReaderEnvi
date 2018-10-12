package com.readerenvi.insert;

import java.io.IOException;

import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Blob;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import database.UserDao;
import bean.User;

//import com.BookStore.Dao.Dao;
//import com.BookStore.Model.Registration;


@MultipartConfig(maxFileSize = 268435456)
public class Insert1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	

	private static final int BUFFER_SIZE = 4096;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		System.out.println("Hello......");
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		    Book book=new Book();
		    String id=request.getParameter("id");
		    System.out.println(id);
		//String BookId=request.getParameter("BookId");
		//System.out.println(BookId);
		    book.setBookId(request.getParameter("BookId"));
	        System.out.println(request.getParameter("BookId"));
	        book.setBookName(request.getParameter("BookName"));
	        System.out.println(request.getParameter("BookName"));
	        book.setAuthorName(request.getParameter("AuthorName"));
	        System.out.println(request.getParameter("AuthorName"));
	       
	        InputStream inputStream = null;	// input stream of the upload file
		   
			// obtains the upload file part in this multipart request
			
			Part filePart = request.getPart("photo");
			if (filePart != null) {
				// prints out some information for debugging
				System.out.println(filePart.getName());
				System.out.println(filePart.getSize());
				System.out.println(filePart.getContentType());
				inputStream = filePart.getInputStream();
			}
			
	        
			 book.setPhoto(filePart.getInputStream());
	        System.out.println(request.getParameter("photo"));
	        book.setCategory(request.getParameter("Category"));
	        System.out.println(request.getParameter("Category"));
                book.setBranch(request.getParameter("Branch"));
                System.out.println(request.getParameter("Branch"));

	        
	        UserDao dao=new UserDao();
	      if(id==null || id.isEmpty())
	    {
	        	UserDao.addBook(book);
	        }
	        else
	        {
				System.out.println("Please Enter Correct Fields");
		}
	      
	      getServletContext().getRequestDispatcher("/booksData.jsp").forward(request, response);
	       /* RequestDispatcher rd=request.getRequestDispatcher("insert.jsp");
		    rd.forward(request, response);*/
	}
	

}
