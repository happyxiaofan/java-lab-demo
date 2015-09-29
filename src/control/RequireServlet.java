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

public class RequireServlet extends HttpServlet {
	Connection conn = ConnectionFactory.getConnection();
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	public RequireServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		try {
			pstmt=conn.prepareStatement("insert into `require` values(?,?)");
			String requireNum=request.getParameter("requireNum");
			pstmt.setString(1,requireNum);
			String requireMing=request.getParameter("requireMing");
			pstmt.setString(2,requireMing);
			pstmt.executeUpdate();
			
			conn.commit();
			
			request.getRequestDispatcher("../lab/Require.jsp").forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
//		response.setContentType("text/html;charset=gb2312");
//		PrintWriter out = response.getWriter();
//		String reqno=request.getParameter("reqno");
//		
//		try {
//			
//			String sql="delete from require where RequireNo="+reqno;
//			pstmt = conn.prepareStatement(sql);
//			pstmt.executeUpdate(sql);
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
	
	}

	
	public void init() throws ServletException {
		// Put your code here
	}

}
