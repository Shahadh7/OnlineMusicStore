package utils;

import java.io.PrintWriter;
import java.io.Writer;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class DbConnectionUtil {
	
	public static Connection dbconnection() throws ClassNotFoundException, SQLException {
		
		Connection connection = null;
		
		if (connection == null || connection.isClosed()) {

			Class.forName(Consts.DRIVER);
			connection = DriverManager.getConnection(Consts.URL,Consts.USER_NAME,Consts.PASSWORD);
			System.out.println("Connected!!!!!");
		}
		return connection;

	}
	
}	
