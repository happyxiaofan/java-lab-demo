package entity;

/**
 * 实验者类别
 * 
 * @author Administrator
 * 
 */
public class Experimenter {
	private String experimenterno;
	private String experimentername;

	public Experimenter() {
	}

	public Experimenter(String experimenterno, String experimentername) {
		super();
		this.experimenterno = experimenterno;
		this.experimentername = experimentername;
	}

	public String getExperimenterno() {
		return experimenterno;
	}

	public void setExperimenterno(String experimenterno) {
		this.experimenterno = experimenterno;
	}

	public String getExperimentername() {
		return experimentername;
	}

	public void setExperimentername(String experimentername) {
		this.experimentername = experimentername;
	}
}
