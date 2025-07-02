package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.dbutil.DBConnection;
import com.pojo.Student;

public class StudentDAO 
{
	private Connection con;
	
	public StudentDAO()
	{
	   con=DBConnection.getDbConnection();
	   System.out.println("----Inside StudentDAO ------");
	}
	
	public Student getInfoByUP(String username,String password)
	{
	  System.out.println("Inside getInfo");
	  try {
	  String sql="Select * FROM student where username=? and password=?";
	  PreparedStatement pstmt=con.prepareStatement(sql);
	  pstmt.setString(1, username);
	  pstmt.setString(2, password);
	  ResultSet rset=pstmt.executeQuery();
		if(rset.next()) {
		System.out.println("---Student is valid------");
		Student studObj=new Student(rset.getInt("sid"),rset.getInt("mobno"),rset.getInt("division"),rset.getInt("marks"),
									rset.getString("name"),rset.getString("username"),rset.getString("password"),rset.getString("email"),rset.getString("year"));
		return studObj;
		}
		else {
			System.out.println("---invalid user name or pwd------");
			return null;
		}
	  }
	  catch(Exception ex)
	  {
		  ex.printStackTrace(); 
	  }
	  return null; 
	}
	
	public ArrayList<Student> getAllStudents() {//
		try {
			String sql = "select * from student";
			Statement stmt = con.createStatement();

			ResultSet rset = stmt.executeQuery(sql);

			ArrayList<Student> list = new ArrayList<Student>();

			while (rset.next()) {
				list.add(new Student(rset.getInt("sid"),rset.getInt("mobno"),rset.getInt("division"),rset.getInt("marks"),
						rset.getString("name"),rset.getString("username"),rset.getString("password"),rset.getString("email"),rset.getString("year")));
			}

			return list;
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}
	
	//sid,mobno,div,marks,name,username,password,email,year
	public void updateStudent(int sid, int mobno, int div, int marks, String name, String username,String password,String email,String year) throws SQLException
	{
		
		 System.out.println("---Inside Update Student");
		String sql = "update student set  name=?,username=?,password=?,email=?,mobno=?,year=?,division=?,marks=? where sid=?";

		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1,name);
		pstmt.setString(2,username);
		pstmt.setString(3,password);
		pstmt.setString(4,email);
		pstmt.setInt(5,mobno);
		pstmt.setString(6,year);
		pstmt.setInt(7, div);
		pstmt.setInt(8, marks);
		pstmt.setInt(9,sid );
		
		 pstmt.executeUpdate();
		
	}
	
	
	public void deleteStudent(int sid) throws SQLException {
		
		System.out.println("---Inside delete student---");
		String sql = "delete from  student where sid=?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, sid);
       pstmt.executeUpdate();
		
	}
	
	
	public void addStudent(int sid, int mobno, int div, int marks, String name, String username,String password,String email,String year) throws SQLException
	{
//sid | name | usernme| password | email | mobno| year | division | marks
		 System.out.println("---Inside Add Student");
			String sql = "insert into student values(?,?,?,?,?,?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1,sid);
			pstmt.setString(2,name);
			pstmt.setString(3,username);
			pstmt.setString(4,password);
			pstmt.setString(5,email);
			pstmt.setInt(6,mobno);
			pstmt.setString(7, year);
			pstmt.setInt(8, div);
			pstmt.setInt(9,marks);
			
			 pstmt.executeUpdate();
			
	}

}
