<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="headerAfterLogin.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="container">
	<div id="main">
		<div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center">Add Batch</h5>
            <form class="form-signin text-left" action="addBatch" method="post">
              <div class="form-label-group">
                <input type="text" id="batchId"  name="batchId" class="form-control" placeholder="Batch Id" required autofocus>
                <label for="batchId">Batch Id</label>
              </div>

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
           
              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Add Batch</button>
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