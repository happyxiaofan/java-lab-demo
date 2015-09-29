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
	 * ����������Ϣ����ʵ����
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
		//�Ƿ�����ɹ�
		isSuccess = false;
		//����islendingֵ�Ľ��������
		ResultSet result;
		/*//�õ������ֵĽ����ܴ�
		String[] labs2 = new String[labs.length];
		for(int j=0;j<labs.length;j++){
			labs2 = labs[j].split(",");
			System.out.println(labs2[j]);
		}*/
		
		//�޸�ʵ���ҵĽ��״̬
		for(String lab:labs){
			//�жϸ�ʵ�����Ƿ��ѱ����
			lab = new String(lab.getBytes("ISO-8859-1"),"utf-8");
			System.out.println("ʵ���ң�"+lab);
			String sql0 = "select islending from labinfo where labnum='"+lab+"'";
			pstmt = conn.prepareStatement(sql0);
			result = pstmt.executeQuery();
			//ȡ�ø��ֶε�ֵ
			if(result.next()){
				int islending = result.getInt("islending");
				if(islending==1){
					System.out.println("�������"+lab+"�ѱ������");
					isSuccess = false; 
					return;
				}else{
					String sql = "update labinfo set islending=1 where labnum='"+lab+"'";
					pstmt = conn.prepareStatement(sql);
					pstmt.executeUpdate();
				}
			}
		}
		
		//�������ݿ����
		String dbsql = "set names gbk";
		PreparedStatement pst = conn.prepareStatement(dbsql);
		pst.execute();
		
		//���������Ϣ
		term = new String(term.getBytes("ISO-8859-1"),"utf-8");
		/*String[] weeks2 = new String[weeks.length];
		for(int i = 0; i < weeks.length; i++){
			weeks[i] = new String(weeks[i].getBytes("gbk"),"utf-8");
			weeks2[i] = weeks[i];
		}*/
		
		
//		teacher = new String(teacher.getBytes("ISO-8859-1"),"utf-8");
		System.out.println("���ݿ��termΪ:"+term);
		System.out.println("���ݿ��teacherΪ��"+teacher);
		for(String lab:labs){
			lab = new String(lab.getBytes("ISO-8859-1"),"utf-8");
			String applySql = "insert into applylabinfo(term,semester,day,weeks,course,labrequire,labcategory,labcount,teacher,time,labnum,percount) values('"+term+"','"+semester+"','"+day+"','"+weeks+"','"+course+"','"+require+"','"+category+"',"+labcount+",'"+teacher+"','"+time+"','"+lab+"',"+percount+")";
			//ִ�в���
			PreparedStatement pstmt2 = conn.prepareStatement(applySql);
			pstmt2.executeUpdate();
			System.out.println("�ѳɹ���ӣ�");
		}
		
		//�ɹ�
		isSuccess = true;
	}
	
	/**
	 * �ж��Ƿ�����ɹ�
	 * @return
	 */
	public static boolean isIsSuccess(){
		return isSuccess;
	}
	
	public List getApplyLabInfo(){
		//����List���󱣴�������Ϣ
		List list = new ArrayList();
		
		return null;
	}
}
