/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connection;
import java.sql.*;
/**
 *
 * @author Harsh
 */
public class Config {
     public static Connection getConnection()
         throws Exception
			  {
				  Class.forName("com.mysql.jdbc.Driver");
				  Connection  conn = DriverManager.getConnection(
						  "jdbc:mysql://localhost:3306/epevaluation","root","root");
				  return conn;
			  }
}
