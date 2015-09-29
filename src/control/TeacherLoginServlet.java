package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Teacher;

import biz.TeacherService;

public class TeacherLoginServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public TeacherLoginServlet() {
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
		//��ֵ
		request.setCharacterEncoding("utf-8");
		String dept,name,pwd;
		dept = request.getParameter("ddlDepts");
		name = request.getParameter("list");
		pwd = request.getParameter("txtPassword");
		System.out.println("���ţ�"+dept+"\n������"+name+"\n���룺"+pwd);
		//�����ݿ��л�ȡ��Ӧ����ʦ��Ϣ���������š�����������
		TeacherService service = new TeacherService();
		//���ݲ��Ż�ȡ��ʦ�б���Ϣ
		List<Teacher> tlist = service.getTeacherByDept(dept);
		System.out.println(tlist.size());
		//������ʦ�б�����Ƿ����ƥ����Ϣ
		while(tlist.iterator().hasNext()){
			Teacher t = (Teacher) tlist.iterator().next();
			//���������붼������������ô��½�ɹ�
			if(name.equals(t.getTeachername()) && pwd.equals(t.getPassword())){
				// ����sessionʧЧʱ�䣨timeout������λΪ��
				request.getSession().setMaxInactiveInterval(30*60);		
				request.getSession().setAttribute("teachername", name);
				request.getRequestDispatcher("lab/Teacher.jsp").forward(request, response);
				return;
			}else{
				//�����¼ʧ��
				request.getRequestDispatcher("lab/TeacherIndex.jsp").forward(request, response);
				return;
			}
		}
	}

}
