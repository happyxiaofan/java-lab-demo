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
		//申请的实验室
		String[] labs = request.getParameterValues("lab$select");
		/**
		 * 测试是否正确输出实验室信息
		 */
		System.out.println("您申请的实验室为：");
		for(String lab:labs){
			lab = new String(lab.getBytes("ISO-8859-1"),"utf-8");
			
			System.out.print(lab+"、");
		}
		
		//学年
		String term = (String) request.getSession().getAttribute("term");
		System.out.println("您申请的学年为"+term);
		
		//学期
		String semester = (String) request.getSession().getAttribute("semester");
		System.out.println("您申请的学期为"+semester);
		
		//星期
		String day = (String) request.getSession().getAttribute("day");
		System.out.println("星期"+day);
		//时间（节次）
		String time = (String) request.getSession().getAttribute("time");
		System.out.println("节次"+time);
		
		//周数
		String[] t_weeks = (String[]) request.getSession().getAttribute("weeks");
		String weeks = "";
		for(String week:t_weeks){
//			System.out.print(week);
			weeks+=week;
		}
		System.out.println(weeks);
//		System.out.println();
		
		//课程
		String course = new String(request.getParameter("lab$course").getBytes("ISO-8859-1"),"utf-8");
		System.out.println("您选择的课程为"+course);
		//实验要求
		String require = new String(request.getParameter("lab$require").getBytes("ISO-8859-1"),"utf-8");
		System.out.println("实验要求为"+require);
		//实验者类别
		String category = new String(request.getParameter("lab$category").getBytes("ISO-8859-1"),"utf-8");
		System.out.println("实验者类别为"+category);
		//实验人数
		int labcount = Integer.parseInt(request.getParameter("lab$count"));
		System.out.println("实验人数为"+labcount);
		//每组实验人数
		int percount = Integer.parseInt(request.getParameter("lab$PerCount"));
		System.out.println("每组实验人数为"+percount);
		
		//申请老师
		String teacher = (String) request.getSession().getAttribute("teacher");
		System.out.println("申请老师为："+teacher);
		
		//
		boolean isSuccess = false;
		try {

			//向数据库中添加数据
			ApplyLabService.apply(term, semester, day, time, weeks, labs, course, require, category, labcount, teacher,percount);
			if(ApplyLabService.isIsSuccess()== true){
				//提交给一个页面提示用户申请已提交
				request.getRequestDispatcher("ApplyLabSuccess.jsp").forward(request, response);
			}else{
				//实验室已被占用
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
