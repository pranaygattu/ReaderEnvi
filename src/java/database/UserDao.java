/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import bean.User;
import com.readerenvi.insert.Book;
import java.io.InputStream;
import com.readerenvi.insert.Book;
import com.readerenvi.insert.Insert1;

public class UserDao {
public static Connection getConnection(){
	Connection con=null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/readerenvi1","root","1234");
	}catch(Exception e){System.out.println(e);}
	return con;
}
public static int save(User u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("insert into register(faname,laname,mail,pass,dob,addr,fname,phn,course,branch,gen) values(?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,u.getfaname());
		ps.setString(2,u.getlaname());
		ps.setString(3,u.getmail());
		ps.setString(4,u.getpass());
		ps.setString(5,u.getdob());
                ps.setString(6,u.getaddr());
		ps.setString(7,u.getfname());
		ps.setString(8,u.getphn());
		ps.setString(9,u.getcourse());
		ps.setString(10,u.getbranch());
                ps.setString(11,u.getgen());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int update(User u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("update register set faname=?,laname=?,mail=?,pass=?,dob=?,addr=?,fname=?,phn=?,course=?,branch=?,gen=? where id=?");
                ps.setString(1,u.getfaname());
		ps.setString(2,u.getlaname());
		ps.setString(3,u.getmail());
		ps.setString(4,u.getpass());
		ps.setString(5,u.getdob());
                ps.setString(6,u.getaddr());
		ps.setString(7,u.getfname());
		ps.setString(8,u.getphn());
		ps.setString(9,u.getcourse());
		ps.setString(10,u.getbranch());
                ps.setString(11,u.getgen());
                ps.setInt(12,u.getId());
		status=ps.executeUpdate();
                System.out.println("Okayyyyyyyyy");
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int delete(User u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("delete from register where id=?");
		ps.setInt(1,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}

	return status;
}
public static List<User> getAllRecords(){
	List<User> list=new ArrayList<User>();
	
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from register");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			User u=new User();
			u.setId(rs.getInt("id"));
			u.setfaname(rs.getString("faname"));
			u.setlaname(rs.getString("laname"));
			u.setmail(rs.getString("mail"));
			u.setpass(rs.getString("pass"));
			u.setdob(rs.getString("dob"));
                        u.setaddr(rs.getString("addr"));
			u.setfname(rs.getString("fname"));
			u.setphn(rs.getString("phn"));
			u.setcourse(rs.getString("course"));
			u.setbranch(rs.getString("branch"));
                        u.setgen(rs.getString("gen"));
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}
public static User getRecordById(int id){
	User u=null;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from register where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			u=new User();
			u.setfaname(rs.getString("faname"));
			u.setlaname(rs.getString("laname"));
			u.setmail(rs.getString("mail"));
			u.setpass(rs.getString("pass"));
			u.setdob(rs.getString("dob"));
                        u.setaddr(rs.getString("addr"));
			u.setfname(rs.getString("fname"));
			u.setphn(rs.getString("phn"));
			u.setcourse(rs.getString("course"));
			u.setbranch(rs.getString("branch"));
                        u.setgen(rs.getString("gen"));
		}
	}catch(Exception e){System.out.println(e);}
	return u;
}
public static void addBook(Book book)
    {
    	 PreparedStatement preparedStatement;
			
			try {
				 System.out.println("Welcome to database");
                                 
                                 Connection con=getConnection();  
				  preparedStatement = con.prepareStatement("insert into book values (?, ?, ?, ?, ?, ?, ?)");
				 
				   preparedStatement.setInt(1, book.getid());
				   System.out.println(book.getid());
				   preparedStatement.setString(2, book.getBookId());
				   System.out.println(book.getBookId());
				   preparedStatement.setString(3, book.getBookName());
				   preparedStatement.setString(4, book.getAuthorName());
				   InputStream inputStream = null;
				   preparedStatement.setBlob(5, book.getPhoto());
				   
				   preparedStatement.setString(6, book.getCategory());
                                   preparedStatement.setString(7, book.getBranch());
				   
				     
				   preparedStatement.executeUpdate();
                                   System.out.println("book was inserted successfully");
			          
			} catch (SQLException e) {
				e.printStackTrace();
			}
	            // Parameters start with 1
	           
    }
/*retriving all books into the admin page*/
public static List<Book> getAllBooks(){
	List<Book> list=new ArrayList<Book>();
	
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from book");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Book b=new Book();
			b.setid(rs.getInt("id"));
			b.setBookId(rs.getString("BookId"));
			b.setBookName(rs.getString("BookName"));
                        b.setAuthorName(rs.getString("AuthorName"));
			b.setPhoto(rs.getBinaryStream("photo"));
			b.setCategory(rs.getString("Category"));
                        b.setBranch(rs.getString("Branch"));
			list.add(b);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}
public static int deleteBook(Book b){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("delete from book where id=?");
		ps.setInt(1,b.getid());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}

	return status;
}
   public static boolean validate(String name, String pass){
       boolean status=false;
       PreparedStatement pst=null;
       ResultSet rs=null;
       try{
       Connection con=getConnection();
       pst=con.prepareStatement("select * from register where mail=? and pass=?");
       pst.setString(1, name);
       pst.setString(2, pass);
       rs=pst.executeQuery();
       status=rs.next();
       }
       catch(Exception e){
        System.out.println(e);
       }
       finally{
           if(pst!=null){
               try{
                   pst.close();
               }catch(SQLException e){
                   e.printStackTrace();
               }
               
           }
           if(rs!=null){
                try{
                    rs.close();
                }catch(SQLException e){
                    e.printStackTrace();
                }
           }
       }
     return status;
   }
   
   public void addIndex(Book book){
        PreparedStatement pts;
       
        try{
            Connection con=getConnection();
            System.out.println("Welcome to database");
            pts = con.prepareStatement("select * from book");
            
                                   //pts.setInt(1, book.getid());		 
				     
				   //pts.executeUpdate();
				   
			  	   ResultSet result = pts.executeQuery();  
				   int id=book.getid();
				    String BookId=book.getBookId();
				    System.out.println(BookId);
					String BookName = book.getBookName();
					String AuthorName = book.getAuthorName();
					InputStream photo = book.getPhoto();
					String Category =book.getCategory();
			
        
        }
        catch (SQLException e){
            System.out.println(e);
        
        }
        
   
   }
   
}

