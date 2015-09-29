package entity;
/**
 * สตั้สา
 * @author Administrator
 *
 */
public class Lab {
	private int labid;
	private String labname;
	private String labdesc;
	private int labcapacity;
	
	public Lab() {
		super();
	}
	public Lab(int labid, String labname, String labdesc, int labcapacity) {
		super();
		this.labid = labid;
		this.labname = labname;
		this.labdesc = labdesc;
		this.labcapacity = labcapacity;
	}
	public int getLabid() {
		return labid;
	}
	public void setLabid(int labid) {
		this.labid = labid;
	}
	public String getLabname() {
		return labname;
	}
	public void setLabname(String labname) {
		this.labname = labname;
	}
	public String getLabdesc() {
		return labdesc;
	}
	public void setLabdesc(String labdesc) {
		this.labdesc = labdesc;
	}
	public int getLabcapacity() {
		return labcapacity;
	}
	public void setLabcapacity(int labcapacity) {
		this.labcapacity = labcapacity;
	}
	
	
}
