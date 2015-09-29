package control;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ConnectionFactory;

public class ExperimentServlet extends HttpServlet {
	Connection conn = ConnectionFactory.getConnection();
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	public ExperimentServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			pstmt=conn.prepareStatement("insert into experiment(ExperimentName,CourseHour,TypeNo,CategoryNo,CourseID) values(?,?,?,?,?)");
			String experimentMing=request.getParameter("experimentMing");
			pstmt.setString(1,experimentMing);
			int xueshi=Integer.parseInt(request.getParameter("xueshi"));
			pstmt.setInt(2,xueshi);
			String typeMing=request.getParameter("typeming");
			pstmt.setString(3,typeMing);
			String categoryMing=request.getParameter("categoryming");
			pstmt.setString(4,categoryMing);
			int courseMing=Integer.parseInt(request.getParameter("courseming"));
			pstmt.setInt(5,courseMing);
			pstmt.executeUpdate();
			
			conn.commit();
			
			request.getRequestDispatcher("../lab/Experiment.jsp").forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	
	public void init() throws ServletException {
		// Put your code here
	}

}
