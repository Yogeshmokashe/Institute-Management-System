package com.profound.batch;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddBatch
 */
@WebServlet("/addBatch")
public class AddBatch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddBatch() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int batchId=Integer.parseInt(request.getParameter("batchId"));
		String batchName=request.getParameter("batchName");
		String startDate=request.getParameter("startDate");
		String endDate=request.getParameter("endDate");
		int fees=Integer.parseInt(request.getParameter("fees"));
		int strength=Integer.parseInt(request.getParameter("strength"));
		
		Batch batch=new Batch();
		batch.setBatchId(batchId);
		batch.setBatchName(batchName);
		batch.setStartDate(startDate);
		batch.setEnddate(endDate);
		batch.setFees(fees);
		batch.setStrength(strength);
		
		try {
			if(BatchDao.addBatch(batch)>0)
			{
				RequestDispatcher rd=request.getRequestDispatcher("displayBatches.jsp");
				rd.forward(request, response);
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			PrintWriter out=response.getWriter();
		}
		
	}

}
