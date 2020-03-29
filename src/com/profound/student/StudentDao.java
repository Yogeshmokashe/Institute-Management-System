package com.profound.student;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.profound.batch.Batch;
import com.profound.batch.BatchDao;

public class StudentDao {

	public static Connection checkConnection() throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/InstituteManagementSystem","root","root123");
		return con;
	}
	public static List<Student> getAllStudents() throws ClassNotFoundException, SQLException
	{
		Connection con =StudentDao.checkConnection();
		PreparedStatement ps=con.prepareStatement("select * from Student");
		ResultSet rs=ps.executeQuery();
		List<Student> list=new ArrayList<Student>();
		
		while(rs.next()) {
			
			Student student= new Student();
			
			student.setStudentId(rs.getInt(1));
			student.setStudentName(rs.getString(2));
			student.setMobileNo(rs.getString(3));
			student.setEmailId(rs.getString(4));
			
			list.add(student);
		}
		return list;
	
		
	}
	public static int addStudent(Student student) throws ClassNotFoundException, SQLException
	{
		Connection con=BatchDao.checkConnection();
		PreparedStatement ps=con.prepareStatement("insert into Student values(?,?,?,?)");
		ps.setInt(1, student.getStudentId());
		ps.setString(2, student.getStudentName());
		ps.setString(3, student.getMobileNo());
		ps.setString(4, student.getEmailId());
		
		int status=ps.executeUpdate();
		return status;
	}
	public static void deleteStudent(int studentId) throws ClassNotFoundException, SQLException
	{
		Connection con=BatchDao.checkConnection();
		
		PreparedStatement ps=con.prepareStatement("delete from student where studentId=?");
		ps.setInt(1, studentId);
		ps.executeUpdate();
		
	}

}
