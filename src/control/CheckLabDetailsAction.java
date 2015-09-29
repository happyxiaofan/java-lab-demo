package control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CheckLabDetailsAction extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public CheckLabDetailsAction() {
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

		request.setCharacterEncoding("utf-8");
		
		//��ȡѡ�е�Checkbox��¼
		String[] labdetails = request.getParameterValues("labdetails$select");
		System.out.println("����ѡ����"+labdetails.length+"����¼");
		for(int i =0;i<labdetails.length;i++){
			System.out.println();
			String term,semester,day,time,labnum,csname,coursename,weeks,number;
			int weekscount = 0;
			
			term = (String) request.getSession().getAttribute("term");
			semester = (String) request.getSession().getAttribute("semester");
			day = (String) request.getSession().getAttribute("day");
			time = (String) request.getSession().getAttribute("time");
			labnum = (String) request.getSession().getAttribute("labname");
			csname = (String) request.getSession().getAttribute("csname");
			coursename = (String) request.getSession().getAttribute("experimentname");
			weeks = (String) request.getSession().getAttribute("week");
			number = (String) request.getSession().getAttribute("weeks_count");
			weekscount = Integer.parseInt(number);
			
			System.out.println("���е�ѧ���ǣ�"+term+"��ѧ���ǣ�"+semester+"�������ǣ�"+day+"���ڴΣ�"+time+
					"��ʵ���ң�"+labnum+"���༶��"+csname+"���γ̣�"+coursename+"��������"+weekscount+"���ܴΣ�"+weeks);
		}
		if(labdetails.length!=0){
			request.getRequestDispatcher("CheckLabDetails_Success.jsp").forward(request, response);
		}
	}

}
