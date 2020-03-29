<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.profound.batch.*" %>
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
		<h1 text-align=left> Batch List</h1>
		<%
			List<Batch> list = BatchDao.getAllBatches();
			request.setAttribute("list",list);
		%>
		<table border="1" width="90%">
		<tr>
			<th>Id</th>
			<th> Name</th>
			<th>Start Date</th>
			<th>End Date</th>
			<th>Fees</th>
			<th>Strength</th>
		</tr>	
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.getBatchId() }</td>
				<td>${u.getBatchName() }</td>
				<td>${u.getStartDate() }</td>
				<td>${u.getEnddate() }</td>
				<td>${u.getFees() }</td>
				<td>${u.getStrength() }</td>
			</tr>
			</c:forEach>	
		</table>
	<a href="addBatch.jsp">Add Batch</a><br>
	<a href="deleteBatch.jsp">Delete Batch</a><br>
	<a href="updateBatch.jsp">Update Batch</a><br>
	</div>
	</div>

</body>
</html>

<%@include file="footer.jsp"%>