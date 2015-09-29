package entity;

/**
 * °à¼¶
 * 
 * @author Administrator
 * 
 */
public class Classes {
	private int classid;
	private String classname;
	private String grade;
	private String majorname;
	private int totalnum;

	public Classes() {
		super();
	}

	public Classes(int classid, String classname, String grade, String majorname,
			int totalnum) {
		super();
		this.classid = classid;
		this.classname = classname;
		this.grade = grade;
		this.majorname = majorname;
		this.totalnum = totalnum;
	}

	public int getClassid() {
		return classid;
	}

	public void setClassid(int classid) {
		this.classid = classid;
	}

	public String getClassname() {
		return classname;
	}

	public void setClassname(String classname) {
		this.classname = classname;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getMajorname() {
		return majorname;
	}

	public void setMajorname(String majorname) {
		this.majorname = majorname;
	}

	public int getTotalnum() {
		return totalnum;
	}

	public void setTotalnum(int totalnum) {
		this.totalnum = totalnum;
	}

}
