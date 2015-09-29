package entity;

import java.util.List;

/**
 * สตั้
 * @author Administrator
 *
 */
public class Experiment {
	private int experimentid;
	public int getExperimentid() {
		return experimentid;
	}
	public void setExperimentid(int experimentid) {
		this.experimentid = experimentid;
	}
	public String getTerm() {
		return term;
	}
	public void setTerm(String term) {
		this.term = term;
	}
	public String getSemester() {
		return semester;
	}
	public void setSemester(String semester) {
		this.semester = semester;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getWeeks() {
		return weeks;
	}
	public void setWeeks(String weeks) {
		this.weeks = weeks;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getLabrequire() {
		return labrequire;
	}
	public void setLabrequire(String labrequire) {
		this.labrequire = labrequire;
	}
	public String getLabcategory() {
		return labcategory;
	}
	public void setLabcategory(String labcategory) {
		this.labcategory = labcategory;
	}
	public int getLabcount() {
		return labcount;
	}
	public void setLabcount(int labcount) {
		this.labcount = labcount;
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	
	/**
	 * @return the time
	 */
	public String getTime() {
		return time;
	}
	/**
	 * @param time the time to set
	 */
	public void setTime(String time) {
		this.time = time;
	}
	/**
	 * @return the labnum
	 */
	public String getLabnum() {
		return labnum;
	}
	/**
	 * @param labnum the labnum to set
	 */
	public void setLabnum(String labnum) {
		this.labnum = labnum;
	}
	/**
	 * @return the labclass
	 */
	public String getLabclass() {
		return labclass;
	}
	/**
	 * @param labclass the labclass to set
	 */
	public void setLabclass(String labclass) {
		this.labclass = labclass;
	}
	
	/**
	 * @return the weekscount
	 */
	public List getWeekscount() {
		return weekscount;
	}
	/**
	 * @param list the weekscount to set
	 */
	public void setWeekscount(List list) {
		this.weekscount = list;
	}
	
	/**
	 * @return the percount
	 */
	public int getPercount() {
		return percount;
	}
	/**
	 * @param percount the percount to set
	 */
	public void setPercount(int percount) {
		this.percount = percount;
	}

	private String term;
	private String semester;
	private String day;
	private String weeks;
	private String course;
	private String labrequire;
	private String labcategory;
	private int labcount;
	private int percount;
	private String teacher;
	private String time;
	private String labnum;
	private String labclass;
	private List weekscount;
	
	public Experiment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Experiment(int experimentid, String term, String semester,
			String day, String weeks, String course, String labrequire,
			String labcategory, int labcount, String teacher) {
		super();
		this.experimentid = experimentid;
		this.term = term;
		this.semester = semester;
		this.day = day;
		this.weeks = weeks;
		this.course = course;
		this.labrequire = labrequire;
		this.labcategory = labcategory;
		this.labcount = labcount;
		this.teacher = teacher;
	}
}
