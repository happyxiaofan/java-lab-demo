package biz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.ConnectionFactory;
import entity.User;

public class UserService {
	Connection conn = ConnectionFactory.getConnection();
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	/**
	 * 得到用户列表
	 * @return
	 */
	public List getAllUser(){
		String sql="select * from user";
		List userList=new ArrayList();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				User user=new User();
				user.setUserid(rs.getInt("UserID"));
				user.setUsername(rs.getString("UserName"));
				user.setUserpwd(rs.getString("UserPwd"));
				
				userList.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return userList;
	}
}
