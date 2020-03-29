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
<div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center">Delete Student</h5>
            <form class="form-signin text-left" action="deleteStudent" method="post">
              
              <div class="form-label-group">
                <input type="text" id="studentId"  name="studentId" class="form-control" placeholder="Student Id" required autofocus>
                <label for="studentId">Student Id</label>
              </div>
           
              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Delete Student</button>
              <hr class="my-4">
              </form>
          </div>
        </div>
      </div>
    </div>

</body>
</html>
<%@ include file="footer.jsp"%>