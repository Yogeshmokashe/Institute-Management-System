package com.profound;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao {

	public static boolean checkUser(String emailID,String password)throws ClassNotFoundException,SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/InstituteManagementSystem","root","root123");
		
		PreparedStatement ps=con.prepareStatement("select * from user where email=? and password=?");
		ps.setString(1, emailID);
		ps.setString(2, password);
		ResultSet rs=ps.executeQuery();
		boolean status=rs.next();
		return status;
	}

}
