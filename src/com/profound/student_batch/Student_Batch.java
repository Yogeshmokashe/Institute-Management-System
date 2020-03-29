package com.profound.student_batch;

public class Student_Batch {

	private int serialNo;
	private String studentName;
	private int studentId;
	private int amountpaid;
	private int batchId;
	
	
	public int getBatchId() {
		return batchId;
	}
	public void setBatchId(int batchId) {
		this.batchId = batchId;
	}
	public int getSerialNo() {
		return serialNo;
	}
	public void setSerialNo(int serialNo) {
		this.serialNo = serialNo;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public int getAmountpaid() {
		return amountpaid;
	}
	public void setAmountpaid(int amountpaid) {
		this.amountpaid = amountpaid;
	}
	@Override
	public String toString() {
		return "Student_Batch [serialNo=" + serialNo + ", studentName=" + studentName + ", studentId=" + studentId
				+ ", amountpaid=" + amountpaid + "]";
	}
	

}
