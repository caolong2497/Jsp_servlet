package user;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class Connect {
		/*
		 * Kết nối đến csdl
		 */

		public static Connection connect() throws ClassNotFoundException{
			Connection conn=null;
			
				String	url;
				String database;
				String username;
				String password;
				InputStream input=null;
				try {
					 Properties properties=new Properties();
					 input=Connect.class.getClassLoader().getResourceAsStream("config.properties");
					properties.load(input);
					url=properties.getProperty("url");
					database=properties.getProperty("database");
					username=properties.getProperty("username");
					password=properties.getProperty("password");
					Class.forName("com.mysql.jdbc.Driver");
					String urlConnect=url+"/"+database;
					conn=DriverManager.getConnection(urlConnect, username, password);
					
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}catch (SQLException e) {
					System.err.println("Kết nối thất bại");
				}
		return conn;
		}
}
