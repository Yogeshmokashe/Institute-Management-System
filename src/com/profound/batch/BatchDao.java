package com.profound.batch;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BatchDao {

	public static Connection checkConnection() throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/InstituteManagementSystem","root","root123");
		return con;
	}
	public static List<Batch> getAllBatches() throws ClassNotFoundException, SQLException
	{
		Connection con =BatchDao.checkConnection();
		PreparedStatement ps=con.prepareStatement("select * from batch");
		ResultSet rs=ps.executeQuery();
		List<Batch> list=new ArrayList<Batch>();
		
		while(rs.next()) {
			
			Batch batch= new Batch();
			
			batch.setBatchId(rs.getInt(1));
			batch.setBatchName(rs.getString(2));
			batch.setStartDate(rs.getString(3));
			batch.setEnddate(rs.getString(4));
			batch.setFees(rs.getInt(5));
			batch.setStrength(rs.getInt(6));
			list.add(batch);
		}
		return list;
	
		
	}
	public static int addBatch(Batch batch) throws ClassNotFoundException, SQLException
	{
		Connection con=BatchDao.checkConnection();
		PreparedStatement ps=con.prepareStatement("insert into Batch values(?,?,?,?,?,?)");
		ps.setInt(1, batch.getBatchId());
		ps.setString(2, batch.getBatchName());
		ps.setString(3, batch.getStartDate());
		ps.setString(4, batch.getEnddate());
		ps.setInt(5, batch.getFees());
		ps.setInt(6, batch.getStrength());
		
		int status=ps.executeUpdate();
		return status;
	}
	public static void deleteBatch(int batchId) throws ClassNotFoundException, SQLException
	{
		Connection con=BatchDao.checkConnection();
		
		PreparedStatement ps=con.prepareStatement("delete from batch where batchId=?");
		ps.setInt(1, batchId);
		ps.executeUpdate();
		
	}
	public static void updateBatch(int batchId) throws ClassNotFoundException, SQLException
	{
		Connection con = BatchDao.checkConnection();
		
		PreparedStatement ps=con.prepareStatement("update where batchId=?");
		ps.setInt(1, batchId);
		ps.executeUpdate();
	}
	public static List<Batch> displayBatchRecord(int batchId) throws ClassNotFoundException, SQLException {
		Connection con =BatchDao.checkConnection();
		PreparedStatement ps=con.prepareStatement("select * from batch where batchId=?");
		ps.setInt(1, batchId);
		ResultSet rs=ps.executeQuery();
		List<Batch> list=new ArrayList<Batch>();
			rs.next();
			Batch batch= new Batch();
			
			batch.setBatchId(batchId);
			batch.setBatchName(rs.getString(2));
			batch.setStartDate(rs.getString(3));
			batch.setEnddate(rs.getString(4));
			batch.setFees(rs.getInt(5));
			batch.setStrength(rs.getInt(6));
			list.add(batch);
			
		return list;
		
	}

}
