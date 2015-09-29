package entity;
/**
 * ¿Î³Ì
 * @author Administrator
 *
 */
public class Course {
	private int courseid;
	private String courseno;
	private String coursename;
	private String experimentcoursename;

	public Course() {
		super();
	}

	public Course(int courseid, String courseno, String coursename,
			String experimentcoursename) {
		super();
		this.courseid = courseid;
		this.courseno = courseno;
		this.coursename = coursename;
		this.experimentcoursename = experimentcoursename;
	}

	public int getCourseid() {
		return courseid;
	}

	public void setCourseid(int courseid) {
		this.courseid = courseid;
	}

	public String getCourseno() {
		return courseno;
	}

	public void setCourseno(String courseno) {
		this.courseno = courseno;
	}

	public String getCoursename() {
		return coursename;
	}

	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}

	public String getExperimentcoursename() {
		return experimentcoursename;
	}

	public void setExperimentcoursename(String experimentcoursename) {
		this.experimentcoursename = experimentcoursename;
	}

}
