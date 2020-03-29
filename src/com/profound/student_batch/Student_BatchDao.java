package com.profound.student_batch;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.profound.student.Student;
import com.profound.student.StudentDao;

public class Student_BatchDao {


	public static Connection checkConnection() throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/InstituteManagementSystem","root","root123");
		return con;
	}
	public static List<Student_Batch> getStudentBatchInfo() throws ClassNotFoundException, SQLException
	{
		Connection con =Student_BatchDao.checkConnection();
		PreparedStatement ps=con.prepareStatement("select * from Student_batch");
		ResultSet rs=ps.executeQuery();
		List<Student_Batch> list=new ArrayList<Student_Batch>();
		
		while(rs.next()) {
			
			Student_Batch student_batch= new Student_Batch();
			
			student_batch.setSerialNo(rs.getInt(1));
			student_batch.setStudentId(rs.getInt(2));
			student_batch.setStudentName(rs.getString(3));
			student_batch.setBatchId(rs.getInt(4));
			student_batch.setAmountpaid(rs.getInt(5));
			list.add(student_batch);
		}
		return list;
	
		
	}

}
