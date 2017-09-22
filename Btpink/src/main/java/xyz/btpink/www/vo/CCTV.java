package xyz.btpink.www.vo;

public class CCTV {
	private String time;
	private String classno;
	private String count;
	public CCTV() {
		super();
	}
	public CCTV(String time, String classno, String count) {
		super();
		this.time = time;
		this.classno = classno;
		this.count = count;
	}
	
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getClassno() {
		return classno;
	}
	public void setClassno(String classno) {
		this.classno = classno;
	}
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}
	@Override
	public String toString() {
		return "CCTV [time=" + time + ", classno=" + classno + ", count=" + count + "]";
	}
}
