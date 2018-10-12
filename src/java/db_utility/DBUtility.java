/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db_utility;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

/**
 *
 * @author GV
 */
public class DBUtility {
	  private static Connection con = null;

	    public static Connection getConnection() {
	        if (con != null)
	            return con;
	        else {
	            try {
	                Properties prop = new Properties();
	                InputStream inputStream = DBUtility.class.getClassLoader().getResourceAsStream("/dbproperties.properties");
	                prop.load(inputStream);
	                String driver = prop.getProperty("driver");
	                System.out.println(driver);
	                String url = prop.getProperty("url");
	                System.out.println(url);
	                String user = prop.getProperty("user");
	                System.out.println(user);
	                String password = prop.getProperty("password");
	                System.out.println(password);
	                Class.forName(driver);
	                con = DriverManager.getConnection(url, user, password);
	            } catch (ClassNotFoundException e) {
	                System.out.println(e);
	            } catch (SQLException e) {
	                System.out.println(e);
	            } catch (FileNotFoundException e) {
	                System.out.println(e);
	            } catch (IOException e) {
	                System.out.println(e);
	            }
	            return con;
	        }

	    }

}
