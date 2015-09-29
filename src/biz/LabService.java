package biz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.ConnectionFactory;
import entity.Lab;

public class LabService {
	Connection conn = ConnectionFactory.getConnection();
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	/**
	 * 得到实验室列表
	 * @return
	 */
	public List<Lab> getAllLab(){
		String sql="select * from `lab`";
		List<Lab> labList=new ArrayList<Lab>();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Lab lab=new Lab();
				lab.setLabid(rs.getInt("LabID"));
				lab.setLabname(rs.getString("LabName"));
				lab.setLabdesc(rs.getString("LabDesc"));
				lab.setLabcapacity(rs.getInt("LabCapacity"));
				labList.add(lab);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return labList;
	}
}
