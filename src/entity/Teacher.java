package entity;
/**
 * ΩÃ ¶¿‡
 * @author Administrator
 *
 */
public class Teacher {
	private int teacherid;
	private String teachername;
	private String teacherdept;
	private String password;

	public Teacher() {
	}

	public Teacher(int teacherid, String teachername, String teacherdept,
			String password) {
		super();
		this.teacherid = teacherid;
		this.teachername = teachername;
		this.teacherdept = teacherdept;
		this.password = password;
	}

	public int getTeacherid() {
		return teacherid;
	}

	public void setTeacherid(int teacherid) {
		this.teacherid = teacherid;
	}

	public String getTeachername() {
		return teachername;
	}

	public void setTeachername(String teachername) {
		this.teachername = teachername;
	}

	public String getTeacherdept() {
		return teacherdept;
	}

	public void setTeacherdept(String teacherdept) {
		this.teacherdept = teacherdept;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
