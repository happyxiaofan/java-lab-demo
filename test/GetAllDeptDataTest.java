import java.util.Iterator;
import java.util.List;

import entity.Dept;

import biz.DeptService;


public class GetAllDeptDataTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		DeptService dp = new DeptService();
		List<?> list = dp.getAllDept();
			Iterator<?> dt = list.iterator();
			while(dt.hasNext()){
				Dept dd = (Dept) dt.next();
				System.out.println("±àºÅ"+dd.getDeptno()+";Ãû³Æ£º"+dd.getDeptname());
			}
	}

}
