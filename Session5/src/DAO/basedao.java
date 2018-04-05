package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class basedao {

	public  Connection connect(){
		Connection con=null;
		String dbURL = "jdbc:sqlserver://localhost:1433;databaseName=JSPServlet_Session5;integratedSecurity=false";
		String userName = "sa";
	    String password = "Long123$";
	    try {
	    	
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			 con = DriverManager.getConnection(dbURL, userName, password);
			 System.out.println("connect successfully!");
		} catch (ClassNotFoundException e) {
			System.out.println("xay ra loi");
		} catch (SQLException e) {
			System.out.println("Kêt nối thất bại");
		}
		return con;
	}
	public void closeConnect(Connection con,ResultSet rs,PreparedStatement ps){
		try {
			if(con!=null){
				con.close();
			}
			if(rs!=null){
				rs.close();
			}
			if(ps!=null){
				ps.close();	
			}
		} catch (SQLException e) {
			System.out.println("đóng kết nối thất bại");
		}
	}

}
