package biz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.ConnectionFactory;
import entity.Major;

public class MajorService {
	Connection conn = ConnectionFactory.getConnection();
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	/**
	 * 得到专业列表
	 * @return
	 */
	public List getAllMajor(){
		String sql="select * from `major`";
		List majorList=new ArrayList();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Major major=new Major();
				major.setMajorid(rs.getInt("MajorID"));
				major.setMajorname(rs.getString("MajorName"));
				major.setMajordesc(rs.getString("MajorDesc"));
				majorList.add(major);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return majorList;
	}
}
