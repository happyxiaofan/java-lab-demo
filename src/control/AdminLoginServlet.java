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
			//��ҳ�淵�ص�½����
			response.sendRedirect("lab/AdminIndex.jsp");	
		}
		//���е�¼��֤
		if(userName.equals(USERNAME) && userPwd.equals(USERPWD)) {
			request.getSession().setMaxInactiveInterval(30*60);		// ����sessionʧЧʱ�䣨timeout������λΪ��
			request.getSession().setAttribute("userinfo", USERNAME);// �û�����������ȷ�������¼��Ϣ(���session��jsp��ҳ���в�ͬ)
			/*response.sendRedirect("lab/Admin.jsp");*/
			request.getRequestDispatcher("lab/Admin.jsp").forward(request, response);
		} else {
			System.out.println("aaaaa");
			response.sendRedirect("lab/AdminIndex.jsp");			// �û��������������ת����¼����
		}
	}

	
	public void init() throws ServletException {
	}

}
