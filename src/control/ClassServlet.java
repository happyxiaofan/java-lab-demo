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

public class ClassServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	Connection conn = ConnectionFactory.getConnection();
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	public ClassServlet() {
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
			pstmt=conn.prepareStatement("insert into 'class'(ClassName,Grade,MajorID,TotalNum) values(?,?,?,?)");
			String classMing=request.getParameter("classMing");
			pstmt.setString(1,classMing);
			String nianji=request.getParameter("nianji");
			pstmt.setString(2,nianji);
			int majorming=Integer.parseInt(request.getParameter("majorming"));
			pstmt.setInt(3,majorming);
			int num=Integer.parseInt(request.getParameter("num"));
			pstmt.setInt(4,num);
			pstmt.executeUpdate();
			
			conn.commit();
			
			request.getRequestDispatcher("../lab/Class.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void init() throws ServletException {
		
	}

}
