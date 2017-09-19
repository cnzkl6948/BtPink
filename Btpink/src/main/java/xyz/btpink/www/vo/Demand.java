package xyz.btpink.www.vo;


public class Demand {
	int demandnum;
	String name;
	String stdno;
	String demandsubject;
	String attend;
	String startdate;
	String enddate;
	String demandcontent;
	String classno;
	
	
	public Demand() {}


	public Demand(int demandnum, String name, String stdno, String demandsubject, String attend, String startdate,
			String enddate, String demandcontent, String classno) {
		super();
		this.demandnum = demandnum;
		this.name = name;
		this.stdno = stdno;
		this.demandsubject = demandsubject;
		this.attend = attend;
		this.startdate = startdate;
		this.enddate = enddate;
		this.demandcontent = demandcontent;
		this.classno = classno;
	}


	public int getDemandnum() {
		return demandnum;
	}


	public void setDemandnum(int demandnum) {
		this.demandnum = demandnum;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getStdno() {
		return stdno;
	}


	public void setStdno(String stdno) {
		this.stdno = stdno;
	}


	public String getDemandsubject() {
		return demandsubject;
	}


	public void setDemandsubject(String demandsubject) {
		this.demandsubject = demandsubject;
	}


	public String getAttend() {
		return attend;
	}


	public void setAttend(String attend) {
		this.attend = attend;
	}


	public String getStartdate() {
		return startdate;
	}


	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}


	public String getEnddate() {
		return enddate;
	}


	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}


	public String getDemandcontent() {
		return demandcontent;
	}


	public void setDemandcontent(String demandcontent) {
		this.demandcontent = demandcontent;
	}


	public String getClassno() {
		return classno;
	}


	public void setClassno(String classno) {
		this.classno = classno;
	}


	@Override
	public String toString() {
		return "Demand [demandnum=" + demandnum + ", name=" + name + ", stdno=" + stdno + ", demandsubject="
				+ demandsubject + ", attend=" + attend + ", startdate=" + startdate + ", enddate=" + enddate
				+ ", demandcontent=" + demandcontent + ", classno=" + classno + "]";
	}
}
