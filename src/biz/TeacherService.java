package biz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.ConnectionFactory;
import entity.Teacher;

public class TeacherService {
	Connection conn = ConnectionFactory.getConnection();
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	/**
	 * 得到教师列表
	 * @return
	 */
	public List getAllTeacher(){
		String sql="select * from teacher";
		List teacherList=new ArrayList();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Teacher teacher=new Teacher();
				teacher.setTeacherid(rs.getInt("TeacherID"));
				teacher.setTeachername(rs.getString("teachername"));
				teacher.setTeacherdept(rs.getString("teacherdept"));
				teacher.setPassword(rs.getString("password"));
				teacherList.add(teacher);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return teacherList;
	}
	
	/**
	 * 根据系得到教师列表
	 * @param prodId
	 * @return
	 */
	public List<Teacher> getTeacherByDept(String TeacherDept){
		List<Teacher> teacherList=new ArrayList<Teacher>();
		
		String sql = "select teachername,password from teacher where teacherdept = (SELECT deptname FROM dept where deptno='"+TeacherDept+"')";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				Teacher teacher=new Teacher();
//				teacher.setTeacherid(rs.getInt("TeacherID"));
				teacher.setTeachername(rs.getString("teachername"));
				teacher.setPassword(rs.getString("password"));
				teacherList.add(teacher);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return teacherList;
	}
}
