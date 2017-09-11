package xyz.btpink.www.vo;

public class Attendence {
	
	private String stdno;
	private String classno;
	private String today;
	private String absent;
	private String early;
	private String sick;
	private String late;
	private String emotion;
	
	public Attendence(){
		
	}
	
	public Attendence(String stdno, String classno, String today, String absent, String early, String sick, String late,
			String emotion) {
		
		this.stdno = stdno;
		this.classno = classno;
		this.today = today;
		this.absent = absent;
		this.early = early;
		this.sick = sick;
		this.late = late;
		this.emotion = emotion;
	}
				

	public String getStdno() {
		return stdno;
	}

	public void setStdno(String stdno) {
		this.stdno = stdno;
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
		return "Attendence [stdno=" + stdno + ", classno=" + classno + ", today=" + today + ", absent=" + absent
				+ ", early=" + early + ", sick=" + sick + ", late=" + late + ", emotion=" + emotion + "]";
	}
	

}