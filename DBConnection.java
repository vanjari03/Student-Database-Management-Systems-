package com.dbutil;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBConnection 
{
public static  Connection getDbConnection()  {
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root123");
		 
		
		System.out.println("---connected to db---");
		return con;
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		return null;
		
	}

}
