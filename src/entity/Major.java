package entity;
/**
 * רҵ
 * @author Administrator
 *
 */
public class Major {
	private int majorid;
	private String majorname;
	private String majordesc;
	public Major(){}
	public Major(int majorid, String majorname, String majordesc) {
		super();
		this.majorid = majorid;
		this.majorname = majorname;
		this.majordesc = majordesc;
	}
	public int getMajorid() {
		return majorid;
	}
	public void setMajorid(int majorid) {
		this.majorid = majorid;
	}
	public String getMajorname() {
		return majorname;
	}
	public void setMajorname(String majorname) {
		this.majorname = majorname;
	}
	public String getMajordesc() {
		return majordesc;
	}
	public void setMajordesc(String majordesc) {
		this.majordesc = majordesc;
	}
	
}
