package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utils.ApplyLabService;

public class AdminApplyLabDetailsAction extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AdminApplyLabDetailsAction() {
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
		//�����ʵ����
		String[] labs = request.getParameterValues("lab$select");
		/**
		 * �����Ƿ���ȷ���ʵ������Ϣ
		 */
		System.out.println("�������ʵ����Ϊ��");
		for(String lab:labs){
			lab = new String(lab.getBytes("ISO-8859-1"),"utf-8");
			
			System.out.print(lab+"��");
		}
		
		//ѧ��
		String term = (String) request.getSession().getAttribute("term");
		System.out.println("�������ѧ��Ϊ"+term);
		
		//ѧ��
		String semester = (String) request.getSession().getAttribute("semester");
		System.out.println("�������ѧ��Ϊ"+semester);
		
		//����
		String day = (String) request.getSession().getAttribute("day");
		System.out.println("����"+day);
		//ʱ�䣨�ڴΣ�
		String time = (String) request.getSession().getAttribute("time");
		System.out.println("�ڴ�"+time);
		
		//����
		String[] t_weeks = (String[]) request.getSession().getAttribute("weeks");
		String weeks = "";
		for(String week:t_weeks){
//			System.out.print(week);
			weeks+=week;
		}
		System.out.println(weeks);
//		System.out.println();
		
		//�γ�
		String course = new String(request.getParameter("lab$course").getBytes("ISO-8859-1"),"utf-8");
		System.out.println("��ѡ��Ŀγ�Ϊ"+course);
		//ʵ��Ҫ��
		String require = new String(request.getParameter("lab$require").getBytes("ISO-8859-1"),"utf-8");
		System.out.println("ʵ��Ҫ��Ϊ"+require);
		//ʵ�������
		String category = new String(request.getParameter("lab$category").getBytes("ISO-8859-1"),"utf-8");
		System.out.println("ʵ�������Ϊ"+category);
		//ʵ������
		int labcount = Integer.parseInt(request.getParameter("lab$count"));
		System.out.println("ʵ������Ϊ"+labcount);
		//ÿ��ʵ������
		int percount = Integer.parseInt(request.getParameter("lab$PerCount"));
		System.out.println("ÿ��ʵ������Ϊ"+percount);
		
		//������ʦ
		String teacher = (String) request.getSession().getAttribute("teacher");
		System.out.println("������ʦΪ��"+teacher);
		
		//
		boolean isSuccess = false;
		try {

			//�����ݿ����������
			ApplyLabService.apply(term, semester, day, time, weeks, labs, course, require, category, labcount, teacher,percount);
			if(ApplyLabService.isIsSuccess()== true){
				//�ύ��һ��ҳ����ʾ�û��������ύ
				request.getRequestDispatcher("ApplyLabSuccess.jsp").forward(request, response);
			}else{
				//ʵ�����ѱ�ռ��
				request.getRequestDispatcher("ApplyLabFailue.jsp").forward(request, response);
//				response.sendRedirect("lab/ApplyLabDetails.jsp");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
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
