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

public class TypeServlet extends HttpServlet {
	Connection conn = ConnectionFactory.getConnection();
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public TypeServlet() {
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
			pstmt=conn.prepareStatement("insert into `type` values(?,?)");
			String typeNum=request.getParameter("typeNum");
			pstmt.setString(1,typeNum);
			String typeMing=request.getParameter("typeMing");
			pstmt.setString(2,typeMing);
			pstmt.executeUpdate();
			
			conn.commit();
			
			request.getRequestDispatcher("../lab/Type.jsp").forward(request, response);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}

	
	public void init() throws ServletException {
		// Put your code here
	}

}
