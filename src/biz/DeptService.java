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
	//���ݿ����Ӷ���
	Connection conn = ConnectionFactory.getConnection();
	//׼��
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	//����һ��List����洢Dept����
	List<Dept> deptList;
	/**
	 * ��ȡ�����ʵ��
	 * @return
	 */
	public DeptService getDeptService(){
		return new DeptService();
	}
	
	/**
	 * �õ�ϵ�б�
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
