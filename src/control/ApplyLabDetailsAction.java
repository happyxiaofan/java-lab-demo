package control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ApplyLabDetailsAction extends HttpServlet {

	/**
	 * 
	 */
//	private static final long serialVersionUID = 1L;

	/**
	 * Constructor of the object.
	 */
	public ApplyLabDetailsAction() {
		super();
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//��ʦ
		String teacher = (String) request.getSession().getAttribute("name");
		System.out.println("��ʦ"+teacher);
		request.getSession().setAttribute("teacher", teacher);
		//ѧ��
		String semester = (String) request.getSession().getAttribute("semester");
		System.out.println(semester);
		request.getSession().setAttribute("semester", semester);
		//����
		String day = request.getParameter("day");
		System.out.println("����"+day);
		request.getSession().setAttribute("day", day);
		//ʱ��
		String time = new String(request.getParameter("time").getBytes("ISO-8859-1"),"utf-8");
		System.out.println(time);
		request.getSession().setAttribute("time", time);
		
		
		//������ת��
		if(time!=null){
			request.getRequestDispatcher("lab/ApplyLabDetails.jsp").forward(request,response);
		}

//		response.sendRedirect("lab/ApplyLabDetails.jsp");
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
