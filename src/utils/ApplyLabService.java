package utils;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.ConnectionFactory;

public class ApplyLabService {

	private static Connection conn = ConnectionFactory.getConnection();
	private static PreparedStatement pstmt = null;
	private static ResultSet rs1 = null;
	private static ResultSet rs2 = null;
	private static boolean isSuccess;
	/**
	 * 根据申请信息申请实验室
	 * @param term
	 * @param semester
	 * @param day
	 * @param time
	 * @param weeks
	 * @param labs
	 * @param course
	 * @param require
	 * @param category
	 * @param labcount
	 * @param percount 
	 * @param percount
	 * @throws SQLException 
	 * @throws UnsupportedEncodingException 
	 */
	public static void apply(String term,String semester,String day,String time,String weeks,String[] labs,String course,
					String require,String category,int labcount,String teacher, int percount) throws SQLException, UnsupportedEncodingException{
		//是否申请成功
		isSuccess = false;
		//保存islending值的结果集对象
		ResultSet result;
		/*//得到纯数字的借用周次
		String[] labs2 = new String[labs.length];
		for(int j=0;j<labs.length;j++){
			labs2 = labs[j].split(",");
			System.out.println(labs2[j]);
		}*/
		
		//修改实验室的借出状态
		for(String lab:labs){
			//判断该实验室是否已被借出
			lab = new String(lab.getBytes("ISO-8859-1"),"utf-8");
			System.out.println("实验室："+lab);
			String sql0 = "select islending from labinfo where labnum='"+lab+"'";
			pstmt = conn.prepareStatement(sql0);
			result = pstmt.executeQuery();
			//取得该字段的值
			if(result.next()){
				int islending = result.getInt("islending");
				if(islending==1){
					System.out.println("您申请的"+lab+"已被借出！");
					isSuccess = false; 
					return;
				}else{
					String sql = "update labinfo set islending=1 where labnum='"+lab+"'";
					pstmt = conn.prepareStatement(sql);
					pstmt.executeUpdate();
				}
			}
		}
		
		//设置数据库编码
		String dbsql = "set names gbk";
		PreparedStatement pst = conn.prepareStatement(dbsql);
		pst.execute();
		
		//添加申请信息
		term = new String(term.getBytes("ISO-8859-1"),"utf-8");
		/*String[] weeks2 = new String[weeks.length];
		for(int i = 0; i < weeks.length; i++){
			weeks[i] = new String(weeks[i].getBytes("gbk"),"utf-8");
			weeks2[i] = weeks[i];
		}*/
		
		
//		teacher = new String(teacher.getBytes("ISO-8859-1"),"utf-8");
		System.out.println("数据库的term为:"+term);
		System.out.println("数据库的teacher为："+teacher);
		for(String lab:labs){
			lab = new String(lab.getBytes("ISO-8859-1"),"utf-8");
			String applySql = "insert into applylabinfo(term,semester,day,weeks,course,labrequire,labcategory,labcount,teacher,time,labnum,percount) values('"+term+"','"+semester+"','"+day+"','"+weeks+"','"+course+"','"+require+"','"+category+"',"+labcount+",'"+teacher+"','"+time+"','"+lab+"',"+percount+")";
			//执行操作
			PreparedStatement pstmt2 = conn.prepareStatement(applySql);
			pstmt2.executeUpdate();
			System.out.println("已成功添加！");
		}
		
		//成功
		isSuccess = true;
	}
	
	/**
	 * 判断是否申请成功
	 * @return
	 */
	public static boolean isIsSuccess(){
		return isSuccess;
	}
	
	public List getApplyLabInfo(){
		//创建List对象保存数据信息
		List list = new ArrayList();
		
		return null;
	}
}
