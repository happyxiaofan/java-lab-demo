package biz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.ConnectionFactory;
import entity.Type;

public class TypeService {
	Connection conn = ConnectionFactory.getConnection();
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	/**
	 * 得到实验类型列表
	 * @return
	 */
	public List getAllType(){
		String sql="select * from `type`";
		List typeList=new ArrayList();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Type type=new Type();
				type.setTypeno(rs.getString("TypeNo"));
				type.setTypename(rs.getString("TypeName"));
				typeList.add(type);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return typeList;
	}
}
