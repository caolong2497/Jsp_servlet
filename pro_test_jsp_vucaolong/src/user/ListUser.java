package user;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public  class ListUser {
	public static ArrayList<user> getList(){
		ArrayList<user> listuser=new ArrayList<user>();
		String sql="Select * from user";
		Statement stmt;
		Connection conn;
		try {
			conn = Connect.connect();
			stmt = conn.createStatement();
			ResultSet rs =stmt.executeQuery(sql);

			while(rs.next()){
				user u=new user(rs.getInt(1), rs.getString(2),rs.getDate(3),rs.getString(4));
				listuser.add(u);
				
			}

		} catch (SQLException e1) {
			System.out.println("lỗi sql"+e1);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("Lỗi notfound"+e);
		}
		return listuser;
	}
}
