package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.dbutil.DBConnection;
import com.pojo.Admin;
import com.pojo.Student;

public class AdminDAO 
{
	private Connection con;
	public AdminDAO()
	{
	   con=DBConnection.getDbConnection();
	   System.out.println("----Inside AdminDAO ------");
	}
	
	public Admin getAdmin(String username,String password)
	{
	   System.out.println("Inside getAdmin");
	   try {
			  String sql="Select * FROM admin where username=? and password=?";
			  PreparedStatement pstmt=con.prepareStatement(sql);
			  pstmt.setString(1, username);
			  pstmt.setString(2, password);
			  ResultSet rset=pstmt.executeQuery();
				if(rset.next()) {
				System.out.println("---Admin is valid------");
			    Admin ad1=new Admin(rset.getString("username"),rset.getString("password"));
				return ad1;
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
	
}
