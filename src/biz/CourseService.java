package biz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.ConnectionFactory;
import entity.Course;

public class CourseService {
	Connection conn = ConnectionFactory.getConnection();
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	/**
	 * 得到课程列表
	 * @return
	 */
	public List getAllCourse(){
		String sql="select * from `course`";
		List courseList=new ArrayList();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Course course=new Course();
				course.setCourseid(rs.getInt("CourseID"));
				course.setCourseno(rs.getString("CourseNo"));
				course.setCoursename(rs.getString("CourseName"));
				course.setExperimentcoursename(rs.getString("ExperimentCourseName"));
				courseList.add(course);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return courseList;
	}
}
