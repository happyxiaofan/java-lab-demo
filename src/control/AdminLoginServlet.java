package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminLoginServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private final static String USERNAME = "admin";
	private final static String USERPWD = "123456";

	public AdminLoginServlet() {
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
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");

		String userName = request.getParameter("username").trim();
		String userPwd = request.getParameter("userpwd").trim();
		
		if(userName == null || userPwd == null) {
			/*System.out.println("aaa");*/
			//把页面返回登陆界面
			response.sendRedirect("lab/AdminIndex.jsp");	
		}
		//进行登录验证
		if(userName.equals(USERNAME) && userPwd.equals(USERPWD)) {
			request.getSession().setMaxInactiveInterval(30*60);		// 设置session失效时间（timeout），单位为秒
			request.getSession().setAttribute("userinfo", USERNAME);// 用户名和密码正确，保存登录信息(获得session与jsp网页稍有不同)
			/*response.sendRedirect("lab/Admin.jsp");*/
			request.getRequestDispatcher("lab/Admin.jsp").forward(request, response);
		} else {
			System.out.println("aaaaa");
			response.sendRedirect("lab/AdminIndex.jsp");			// 用户名和密码错误，跳转到登录界面
		}
	}

	
	public void init() throws ServletException {
	}

}
