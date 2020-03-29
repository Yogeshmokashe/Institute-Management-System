<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.profound.student.*" %>
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
		<h1 text-align=left> Student List</h1>
		<%
			List<Student> list = StudentDao.getAllStudents();
			request.setAttribute("list",list);
		%>
		<table border="1" width="90%">
		<tr>
			<th>Id</th>
			<th> Name</th>
			<th>Mobile No</th>
			<th>Email Id</th>
			
		</tr>	
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.getStudentId() }</td>
				<td>${u.getStudentName() }</td>
				<td>${u.getMobileNo() }</td>
				<td>${u.getEmailId() }</td>
				
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