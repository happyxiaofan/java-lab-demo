package biz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.ConnectionFactory;
import entity.Experimenter;


public class ExperimenterService {
	Connection conn = ConnectionFactory.getConnection();
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	/**
	 * 得到实验者类别列表
	 * @return
	 */
	public List getAllExperimenter(){
		String sql="select * from `experimenter`";
		List experimenterList=new ArrayList();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Experimenter experimenter=new Experimenter();
				experimenter.setExperimenterno(rs.getString("ExperimenterNo"));
				experimenter.setExperimentername(rs.getString("ExperimenterName"));
				experimenterList.add(experimenter);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return experimenterList;
	}
}
