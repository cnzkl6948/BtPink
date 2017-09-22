package xyz.btpink.www.vo;

public class CCTV {
	private String time;
	private String classno;
	private int count;
	public CCTV() {
		super();
	}
	public CCTV(String time, String classno, int count) {
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
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	@Override
	public String toString() {
		return "CCTV [time=" + time + ", classno=" + classno + ", count=" + count + "]";
	}
}
