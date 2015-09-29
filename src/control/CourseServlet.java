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

public class CourseServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	Connection conn = ConnectionFactory.getConnection();
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	public CourseServlet() {
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
			pstmt=conn.prepareStatement("insert into `course`(CourseNo,CourseName,ExperimentCourseName) values(?,?,?)");
			String courseNum=request.getParameter("courseNum");
			pstmt.setString(1,courseNum);
			String courseMing=request.getParameter("courseMing");
			pstmt.setString(2,courseMing);
			String experimentcourseMing=request.getParameter("experimentcourseMing");
			pstmt.setString(3,experimentcourseMing);
			pstmt.executeUpdate();
			
			conn.commit();
			
			request.getRequestDispatcher("../lab/Course.jsp").forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	public void init() throws ServletException {
		// Put your code here
	}

}
