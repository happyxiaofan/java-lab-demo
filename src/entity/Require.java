package entity;
/**
 * ʵ��Ҫ��ʵ����
 * @author Administrator
 *
 */
public class Require {
	private String requireno;
	private String requirename;
	
	public Require(){}
	public Require(String requireno, String requirename) {
		super();
		this.requireno = requireno;
		this.requirename = requirename;
	}
	public String getRequireno() {
		return requireno;
	}
	public void setRequireno(String requireno) {
		this.requireno = requireno;
	}
	public String getRequirename() {
		return requirename;
	}
	public void setRequirename(String requirename) {
		this.requirename = requirename;
	}
	
	
}
