package entity;
/**
 * Ñ§ÆÚ
 * @author Administrator
 *
 */
public class Term {
private int termid;
private int beginweek;
private int endweek;
private String weekyear;
private String term;

public Term() {
	super();
}
public Term(int termid, int beginweek, int endweek, String weekyear,
		String term) {
	super();
	this.termid = termid;
	this.beginweek = beginweek;
	this.endweek = endweek;
	this.weekyear = weekyear;
	this.term = term;
}
public int getTermid() {
	return termid;
}
public void setTermid(int termid) {
	this.termid = termid;
}
public int getBeginweek() {
	return beginweek;
}
public void setBeginweek(int beginweek) {
	this.beginweek = beginweek;
}
public int getEndweek() {
	return endweek;
}
public void setEndweek(int endweek) {
	this.endweek = endweek;
}
public String getWeekyear() {
	return weekyear;
}
public void setWeekyear(String weekyear) {
	this.weekyear = weekyear;
}
public String getTerm() {
	return term;
}
public void setTerm(String term) {
	this.term = term;
}

}
