package com.profound.student;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.profound.batch.Batch;
import com.profound.batch.BatchDao;

/**
 * Servlet implementation class AddStudent
 */
@WebServlet("/addStudent")
public class AddStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddStudent() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int studentId=Integer.parseInt(request.getParameter("studentId"));
		String studentName=request.getParameter("studentName");
		String emailId=request.getParameter("email");
		String mobileNo=request.getParameter("mobileNo");
		
		Student student=new Student();
		student.setStudentId(studentId);
		student.setStudentName(studentName);
		student.setEmailId(emailId);;
		student.setMobileNo(mobileNo);
		
		try {
			if(StudentDao.addStudent(student)>0)
			{
				RequestDispatcher rd=request.getRequestDispatcher("displayStudents.jsp");
				rd.forward(request, response);
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			PrintWriter out=response.getWriter();
		}
		
	}
	
}


