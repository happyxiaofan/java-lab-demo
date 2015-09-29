package control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omg.CORBA.Request;

public class ApplyLabServlet extends HttpServlet {
	
	public  String[] weeks;

	public  String[] getWeeks() {
		return weeks;
	}

	/**
	 * Constructor of the object.
	 */
	public ApplyLabServlet() {
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

		doPost(request, response);
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

		//���ñ��뷽ʽ
		request.setCharacterEncoding("utf-8");
		//��ȡ��Ҫ����Ϣ
		String dept,name,term,semester;
		dept = request.getParameter("ddlDepts");
		name = new String(request.getParameter("list").getBytes("ISO-8859-1"),"utf-8");
		term = request.getParameter("term");
		semester = new String(request.getParameter("semester").getBytes("ISO-8859-1"),"utf-8");
		weeks = request.getParameterValues("cblWeek");
		//����Щ��Ϣ��������Session������
		//����
		request.getSession().setAttribute("dept", dept);
		//����
		System.out.println("��ʦΪ:"+name);
		request.getSession().setAttribute("name", name);
		//ѧ��
		request.getSession().setAttribute("term", term);
		//ѧ��
		request.getSession().setAttribute("semester", semester);
		System.out.println("��ѡ���ѧ���ǣ�"+semester);
		
		System.out.println("��ѡ����ܴΣ�");
		String[] weeks2 = new String[weeks.length];
		for(int i=0; i < weeks.length-1; i++){
			weeks2[i] = weeks[i]+",";
		}
		weeks2[weeks.length-1] = weeks[weeks.length-1];
		
		//���weeks2����
		for(String week:weeks2){
			System.out.print(week);
		}
		
		//�ܴ�
		request.getSession().setAttribute("weeks", weeks2);
		
		if(weeks!=null && weeks.length!=0){
			//ת��������ҳ��
			request.getRequestDispatcher("lab/SearchResults.jsp").forward(request, response);
			return;
		}else{
			//�������ض���
			response.sendRedirect("lab/ApplyLab.jsp");
			return;
		}
	}

}
