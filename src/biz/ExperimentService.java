package biz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.ConnectionFactory;
import entity.Classes;
import entity.Experiment;

/**
 * 获取申请实验室的实验记录
 * 
 * @author 础彬
 * 
 */
public class ExperimentService {
	Connection conn = ConnectionFactory.getConnection();
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	/**
	 * 得到实验列表
	 * 
	 * @return
	 */
	public List<Experiment> getAllExperiment() {
		String sql = "select * from applylabinfo";
		List<Experiment> experimentList = new ArrayList<Experiment>();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Experiment experiment = new Experiment();
				// experiment.setExperimentid(rs.getInt("id"));
				experiment.setTerm(rs.getString("term")); // 学年
				experiment.setSemester(rs.getString("semester")); // 学期
				experiment.setTeacher(rs.getString("teacher")); // 申请人

				experimentList.add(experiment);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return experimentList;
	}

	/**
	 * 根据申请人返回申请的申请次数
	 * 
	 * @param teacher
	 * @return 申请次数
	 */
	public int getApplyNum(String teacher) {
		String sql = "select teacher,count(teacher) as Count from applylabinfo where teacher='"
				+ teacher + "'group by teacher";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {

				// 获取申请次数，并返回
				int count = rs.getInt("Count");
				return count;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	public List getApplyDetails(String teacher) throws SQLException {
		String detailssql = "select * from applylabinfo where teacher='"
				+ teacher + "'";
		List<Experiment> list = new ArrayList<Experiment>();
		PreparedStatement pstmt = conn.prepareStatement(detailssql);
		ResultSet rs = pstmt.executeQuery();
		System.out.println(rs.next());
		rs.beforeFirst();
		// 遍历
		while (rs.next()) {
			System.out.println("进入循环中");
			Experiment ep = new Experiment();
			ep.setTerm(rs.getString("term"));
			ep.setSemester(rs.getString("semester"));
			ep.setDay(rs.getString("day"));
			ep.setTime(rs.getString("time"));
			ep.setCourse(getCourseName(rs.getString("course")));
			/*
			 * List<Class> list2 = getClasses(teacher); for(int i = 0;
			 * i<list2.size(); i++){ Class cs = (Class) list2.get(i); String
			 * classname = cs.getClassname(); ep.setLabclass(classname); }
			 */
			List<Classes> list2 = getClasses(teacher);
			String classes = "";
			for (int i = 0; i < list2.size(); i++) {
				Classes cs = (Classes) list2.get(i);
				String classname = cs.getClassname();
				classes += classname;
			}
			ep.setLabclass(classes);
			ep.setLabnum(rs.getString("labnum"));
			
			//下面的参数是要传给下个页面使用的
			ep.setLabcount(rs.getInt("labcount"));
			ep.setPercount(rs.getInt("percount"));
			ep.setLabrequire(rs.getString("labrequire"));
			ep.setLabcategory(rs.getString("labcategory"));
			// ep.setWeekscount(getWeeksCount(teacher));
			// ep.setWeeks(rs.getString("weeks"));
			list.add(ep);
		}
		return list;

	}

	public List<String> getWeeksCount(String teacher) {
		String sql = "select weeks from applylabinfo where teacher='" + teacher
				+ "'";
		PreparedStatement pstmt;
		// int t_count = 0;
		List<String> l_weeks = new ArrayList<String>();
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				String weeks = rs.getString("weeks");
				l_weeks.add(weeks);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return l_weeks;
	}

	public String getCourseName(String course) {
		String sql = "select coursename from course where course='" + course
				+ "';";
		String coursename = "";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				coursename = rs.getString("coursename");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return coursename;
	}

	public List<Classes> getClasses(String teacher) {
		String sql = "select teacherid from teacher where teachername='"
				+ teacher + "';";
		String teacherid = "";
		PreparedStatement pstmt;
		List<Classes> list = new ArrayList<Classes>();
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				teacherid = rs.getString("teacherid");
			}
			String sql2 = "select classname from teaching where teacherid ='"
					+ teacherid + "';";
			pstmt = conn.prepareStatement(sql2);
			ResultSet rs2 = pstmt.executeQuery();
			while (rs2.next()) {
				Classes cs = new Classes();
				cs.setClassname(rs2.getString("classname"));
				list.add(cs);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	public String getLabRequireName(String labrequire){
		String sql = "select requirename from labrequire where labrequire='"+labrequire+"'";
		String requirename = "";
		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rset = pstmt.executeQuery();
			rset.beforeFirst();
			while(rset.next()){
				requirename = rset.getString("requirename");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return requirename;
	}
	public String getCategoryName(String labcategory){
		String sql = "select categoryname from category where labcategory='"+labcategory+"'";
		String categoryname = "";
		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()){
				categoryname = rs.getString("categoryname");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return categoryname;
	}
}
