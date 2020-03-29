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
		
		<div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center" >Update Batch</h5>
            <form class="form-signin text-left" action="updateAfterBatchIdBatch" method="post">
              
              <div class="form-label-group">
                <input type="text" id="batchName" name="batchName" class="form-control" placeholder="Batch Name" required>
                <label for="batchName">Batch Name</label>
              </div>
              
              <div class="form-label-group">
                <input type="text" id="startDate" name="startDate" class="form-control" placeholder="Start Date" required>
                <label for="startDate">Start Date</label>
              </div>
              
              <div class="form-label-group">
                <input type="text" id="endDate" name="endDate" class="form-control" placeholder="End Date" required>
                <label for="endDate">End Date</label>
              </div>
              
              <div class="form-label-group">
                <input type="text" id="fees" name="fees" class="form-control" placeholder="Fees" required>
                <label for="fees">Fees</label>
              </div>
              
              <div class="form-label-group">
                <input type="strength" id="strength" name="strength" class="form-control" placeholder="strength" required>
                <label for="strength">Strength</label>
              </div>
           
              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Update Batch</button>
              <hr class="my-4">
              </form>
          </div>
        </div>
      </div>
    </div>

	</div>
	</div>

</body>
</html>

<%@include file="footer.jsp"%>