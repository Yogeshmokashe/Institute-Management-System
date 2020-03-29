<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.profound.student_batch.*" %>
<%@page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@include file="headerAfterLogin.jsp" %>
    
<!DOCTYPE html>
<html>
<head>

</head>
<body>
<div id="container text-align:left" >
	<div id="main">
		<h1 text-align=left> Student Batch List</h1>
		<%
			List<Student_Batch> list = Student_BatchDao.getStudentBatchInfo();
			request.setAttribute("list",list);
		%>
		<table border="1" width="90%">
		<tr>
			<th>Serial No</th>
			<th>Student Id</th>
			<th>Student Name</th>
			<th>Batch Id</th>
			<th>Amount Paid</th>
			
		</tr>	
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.getSerialNo() }</td>
				<td>${u.getStudentName() }</td>
				<td>${u.getStudentId() }</td>
				<td>${u.getBatchId() }</td>
				<td>${u.getAmountpaid() }</td>
				
			</tr>
			</c:forEach>	
		</table>
	<a href="addStudent.jsp">Add Student</a><br>
	<a href="deleteStudent.jsp">Delete Student</a><br>
	<a href="update.jsp">Update Student</a><br>
	</div>
	</div>

</body>
</html>

<%@include file="footer.jsp"%>