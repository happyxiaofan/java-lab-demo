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

		//设置编码方式
		request.setCharacterEncoding("utf-8");
		//获取必要的信息
		String dept,name,term,semester;
		dept = request.getParameter("ddlDepts");
		name = new String(request.getParameter("list").getBytes("ISO-8859-1"),"utf-8");
		term = request.getParameter("term");
		semester = new String(request.getParameter("semester").getBytes("ISO-8859-1"),"utf-8");
		weeks = request.getParameterValues("cblWeek");
		//把这些信息都保存在Session对象中
		//部门
		request.getSession().setAttribute("dept", dept);
		//姓名
		System.out.println("老师为:"+name);
		request.getSession().setAttribute("name", name);
		//学年
		request.getSession().setAttribute("term", term);
		//学期
		request.getSession().setAttribute("semester", semester);
		System.out.println("您选择的学期是："+semester);
		
		System.out.println("您选择的周次：");
		String[] weeks2 = new String[weeks.length];
		for(int i=0; i < weeks.length-1; i++){
			weeks2[i] = weeks[i]+",";
		}
		weeks2[weeks.length-1] = weeks[weeks.length-1];
		
		//输出weeks2数组
		for(String week:weeks2){
			System.out.print(week);
		}
		
		//周次
		request.getSession().setAttribute("weeks", weeks2);
		
		if(weeks!=null && weeks.length!=0){
			//转发到申请页面
			request.getRequestDispatcher("lab/SearchResults.jsp").forward(request, response);
			return;
		}else{
			//服务器重定向
			response.sendRedirect("lab/ApplyLab.jsp");
			return;
		}
	}

}
