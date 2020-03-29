<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="headerAfterLogin.jsp" %>
<!DOCTYPE html>
<html>
<!-- for not letting others get back to site without logging -->
<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); %>

<body>
	<div id="container" style="text-align:left">
	<div id="main">
	
	<!-- Page Heading -->
  <h1 class="my-4">Welcome to Institute Management System
  </h1>

  <div class="row">
    <div class="col-lg-4 col-sm-6 mb-4">
      <div class="card h-100">
        <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
        <div class="card-body">
          <h4 class="card-title">
            <a href="displayBatches.jsp">Batch Information</a>
          </h4>
          <p class="card-text">Click to view Batch Information</p>
        </div>
      </div>
    </div>
    <div class="col-lg-4 col-sm-6 mb-4">
      <div class="card h-100">
        <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
        <div class="card-body">
          <h4 class="card-title">
            <a href="displayStudent_batch.jsp">Student Batch Information</a>
          </h4>
          <p class="card-text">Click to view Student Batch Information</p>
        </div>
      </div>
    </div>
    <div class="col-lg-4 col-sm-6 mb-4">
      <div class="card h-100">
        <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
        <div class="card-body">
          <h4 class="card-title">
            <a href="#">Teacher Information</a>
          </h4>
          <p class="card-text">Click to view Teacher Information</p>
        </div>
      </div>
    </div>
    
    
    
  </div>
  <!-- /.row -->

  <!-- Pagination -->
  <ul class="pagination justify-content-center">
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Previous">
            <span aria-hidden="true">&laquo;</span>
            <span class="sr-only">Previous</span>
          </a>
    </li>
    <li class="page-item">
      <a class="page-link" href="#">1</a>
    </li>
    <li class="page-item">
      <a class="page-link" href="#">2</a>
    </li>
    <li class="page-item">
      <a class="page-link" href="#">3</a>
    </li>
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Next">
            <span aria-hidden="true">&raquo;</span>
            <span class="sr-only">Next</span>
          </a>
    </li>
  </ul> 
	</div>
	</div>
</body>
</html>
<%@ include file="footer.jsp"%>