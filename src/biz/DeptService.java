package biz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.ConnectionFactory;
import entity.Dept;

public class DeptService {
	//数据库链接对象
	Connection conn = ConnectionFactory.getConnection();
	//准备
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	//声明一个List对象存储Dept对象
	List<Dept> deptList;
	/**
	 * 获取该类的实例
	 * @return
	 */
	public DeptService getDeptService(){
		return new DeptService();
	}
	
	/**
	 * 得到系列表
	 * @return
	 */
	public  List<Dept> getAllDept(){
		String sql="select * from dept";
		deptList=new ArrayList<Dept>();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Dept dept=new Dept();
				dept.setDeptno(rs.getString("deptno"));
				dept.setDeptname(rs.getString("deptname"));
				deptList.add(dept);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return deptList;
	}
}
