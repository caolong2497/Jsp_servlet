package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Entities.Student;

public class studentDao {
	public ArrayList<Student> getAllStudent(){
		ArrayList<Student> list =new ArrayList<Student>();
		String sql="select * from TblStudent";
		basedao bd=new basedao();
		ResultSet rs=null;
		PreparedStatement ps=null;
		Connection con=bd.connect();
		try {
			 ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()){
				Student student=new Student();
				student.setRollNumber(rs.getString(1));
				student.setFullName(rs.getString(2));
				student.setGender(rs.getBoolean(3));
				student.setBirthday(rs.getDate(4));
				student.setAddress(rs.getString(5));
				student.setClassName(rs.getString(6));
				list.add(student);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			
			bd.closeConnect(con, rs, ps);
		}
		return list;
	}
	public Student getStudentByID(String studentid){
		String sql="select * from TblStudent where RollNumber=?";
		basedao bd=new basedao();
		ResultSet rs=null;
		PreparedStatement ps=null;
		Connection con=bd.connect();
		Student student=null;
		try {
			 ps=con.prepareStatement(sql);
			 ps.setString(1, studentid);
			rs=ps.executeQuery();
			rs.next();
				student=new Student();
				student.setRollNumber(rs.getString(1));
				student.setFullName(rs.getString(2));
				student.setGender(rs.getBoolean(3));
				student.setBirthday(rs.getDate(4));
				student.setAddress(rs.getString(5));
				student.setClassName(rs.getString(6));

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			
			bd.closeConnect(con, rs, ps);
		}
		return student;
	}
}
