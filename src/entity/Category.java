package entity;

public class Category {
	private String categoryno;
	private String categoryname;

	public Category() {
		super();
	}

	public Category(String categoryno, String categoryname) {
		super();
		this.categoryno = categoryno;
		this.categoryname = categoryname;
	}

	public String getCategoryno() {
		return categoryno;
	}

	public void setCategoryno(String categoryno) {
		this.categoryno = categoryno;
	}

	public String getCategoryname() {
		return categoryname;
	}

	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}

}
