package biz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.ConnectionFactory;
import entity.Require;

public class RequireService {

	Connection conn = ConnectionFactory.getConnection();
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	/**
	 * 得到实验要求列表
	 * @return
	 */
	public List getAllRequire(){
		String sql="select * from `require`";
		List requireList=new ArrayList();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Require require=new Require();
				require.setRequireno(rs.getString("RequireNo"));
				require.setRequirename(rs.getString("RequireName"));
				requireList.add(require);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return requireList;
	}
}
