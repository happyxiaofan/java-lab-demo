package biz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.ConnectionFactory;
import entity.Classes;

public class ClassService {
	Connection conn = ConnectionFactory.getConnection();
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	/**
	 * 得到班级列表
	 * @return
	 */
	public List getAllClass(){
		String sql="select ClassID,ClassName,Grade,TotalNum,MajorName from class,major where class.MajorID=major.MajorID";
		List classList=new ArrayList();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Classes clas=new Classes();
				clas.setClassid(rs.getInt("ClassID"));
				clas.setClassname(rs.getString("ClassName"));
				clas.setGrade(rs.getString("Grade"));
				clas.setTotalnum(rs.getInt("TotalNum"));
				clas.setMajorname(rs.getString("MajorName"));
				classList.add(clas);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return classList;
	}
}
