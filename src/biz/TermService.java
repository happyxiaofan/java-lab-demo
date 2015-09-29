package biz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.ConnectionFactory;
import entity.Classes;
import entity.Term;

public class TermService {
	Connection conn = ConnectionFactory.getConnection();
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	/**
	 * 得到学期列表
	 * @return
	 */
	public List getAllTerm(){
		String sql="select TermID,Beginweek,EndWeek,WeekYear,Term from term";
		List termList=new ArrayList();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Term term=new Term();
				term.setTermid(rs.getInt("TermID"));
				term.setBeginweek(rs.getInt("Beginweek"));
				term.setEndweek(rs.getInt("EndWeek"));
				term.setWeekyear(rs.getString("WeekYear"));
				term.setTerm(rs.getString("Term"));
				termList.add(term);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return termList;
	}
}
