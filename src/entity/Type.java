package entity;
/**
 * Àà±ð
 * @author Administrator
 *
 */
public class Type {
	private String typeno;
	private String typename;
	
	public Type(){}
	public Type(String typeno, String typename) {
		super();
		this.typeno = typeno;
		this.typename = typename;
	}
	public String getTypeno() {
		return typeno;
	}
	public void setTypeno(String typeno) {
		this.typeno = typeno;
	}
	public String getTypename() {
		return typename;
	}
	public void setTypename(String typename) {
		this.typename = typename;
	}
	
	
	
}
