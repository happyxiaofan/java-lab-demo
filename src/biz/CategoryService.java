package biz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.ConnectionFactory;
import entity.Category;

public class CategoryService {
	Connection conn = ConnectionFactory.getConnection();
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	/**
	 * 得到实验类别列表
	 * @return
	 */
	public List getAllCategory(){
		String sql="select * from `category`";
		List categoryList=new ArrayList();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Category category=new Category();
				category.setCategoryno(rs.getString("CategoryNo"));
				category.setCategoryname(rs.getString("CategoryName"));
				categoryList.add(category);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return categoryList;
	}
}
