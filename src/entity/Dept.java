package entity;
/**
 * ϵ
 * @author Administrator
 *
 */
public class Dept {
	private String deptno;
	private String deptname;
	
	public Dept() {
		super();
	}

	public Dept(String deptno, String deptname) {
		super();
		this.deptno = deptno;
		this.deptname = deptname;
	}

	public String getDeptno() {
		return deptno;
	}

	public void setDeptno(String deptno) {
		this.deptno = deptno;
	}

	public String getDeptname() {
		return deptname;
	}

	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}
	
	
}
