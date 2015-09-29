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
		//传值
		request.setCharacterEncoding("utf-8");
		String dept,name,pwd;
		dept = request.getParameter("ddlDepts");
		name = request.getParameter("list");
		pwd = request.getParameter("txtPassword");
		System.out.println("部门："+dept+"\n姓名："+name+"\n密码："+pwd);
		//从数据库中获取对应的老师信息。包括部门、姓名和密码
		TeacherService service = new TeacherService();
		//根据部门获取老师列表信息
		List<Teacher> tlist = service.getTeacherByDept(dept);
		System.out.println(tlist.size());
		//遍历教师列表查找是否存在匹配信息
		while(tlist.iterator().hasNext()){
			Teacher t = (Teacher) tlist.iterator().next();
			//姓名和密码都符合条件，那么登陆成功
			if(name.equals(t.getTeachername()) && pwd.equals(t.getPassword())){
				// 设置session失效时间（timeout），单位为秒
				request.getSession().setMaxInactiveInterval(30*60);		
				request.getSession().setAttribute("teachername", name);
				request.getRequestDispatcher("lab/Teacher.jsp").forward(request, response);
				return;
			}else{
				//否则登录失败
				request.getRequestDispatcher("lab/TeacherIndex.jsp").forward(request, response);
				return;
			}
		}
	}

}
