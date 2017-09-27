package xyz.btpink.www.vo;

public class Attendence {

	private String stdno;
	private String name;
	private String classno;
	private String today;
	private String absent;
	private String early;
	private String sick;
	private String late;
	private String emotion;
	private double absentAvg;

	public Attendence() {

	}

	public Attendence(String stdno, String name, String classno, String today, String absent, String early, String sick,
			String late, String emotion, double absentAvg) {
		super();
		this.stdno = stdno;
		this.name = name;
		this.classno = classno;
		this.today = today;
		this.absent = absent;
		this.early = early;
		this.sick = sick;
		this.late = late;
		this.emotion = emotion;
		this.absentAvg = absentAvg;
	}

	public double getAbsentAvg() {
		return absentAvg;
	}

	public void setAbsentAvg(double absentAvg) {
		this.absentAvg = absentAvg;
	}

	public String getStdno() {
		return stdno;
	}

	public void setStdno(String stdno) {
		this.stdno = stdno;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getClassno() {
		return classno;
	}

	public void setClassno(String classno) {
		this.classno = classno;
	}

	public String getToday() {
		return today;
	}

	public void setToday(String today) {
		this.today = today;
	}

	public String getAbsent() {
		return absent;
	}

	public void setAbsent(String absent) {
		this.absent = absent;
	}

	public String getEarly() {
		return early;
	}

	public void setEarly(String early) {
		this.early = early;
	}

	public String getSick() {
		return sick;
	}

	public void setSick(String sick) {
		this.sick = sick;
	}

	public String getLate() {
		return late;
	}

	public void setLate(String late) {
		this.late = late;
	}

	public String getEmotion() {
		return emotion;
	}

	public void setEmotion(String emotion) {
		this.emotion = emotion;
	}

	@Override
	public String toString() {
		return "Attendence [stdno=" + stdno + ", name=" + name + ", classno=" + classno + ", today=" + today
				+ ", absent=" + absent + ", early=" + early + ", sick=" + sick + ", late=" + late + ", emotion="
				+ emotion + ", absentAvg=" + absentAvg + "]";
	}


}
