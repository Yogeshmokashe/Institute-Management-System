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
            <h5 class="card-title text-center">Add Student</h5>
            <form class="form-signin text-left" action="addStudent" method="post">
              <div class="form-label-group">
                <input type="text" id="studentId"  name="studentId" class="form-control" placeholder="Student Id" required autofocus>
                <label for="StudentId">Student Id</label>
              </div>

              <div class="form-label-group">
                <input type="text" id="studentName" name="studentName" class="form-control" placeholder="Student Name" required>
                <label for="studentName">Student Name</label>
              </div>
              
              <div class="form-label-group">
                <input type="text" id="mobileNo" name="mobileNo" class="form-control" placeholder="Mobile No" required>
                <label for="mobileNo">Mobile No</label>
              </div>
              
              <div class="form-label-group">
                <input type="text" id="email" name="email" class="form-control" placeholder="Email" required>
                <label for="email">Email</label>
              </div>
             
              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Add Student</button>
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