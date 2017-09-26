package xyz.btpink.www.vo;


public class MainParam {
	
	private String attend;
	private String early;
	private String sick;
	private String absent;
	
	public MainParam() {
	}

	public MainParam(String attend, String early, String sick, String absent) {
		
		this.attend = attend;
		this.early = early;
		this.sick = sick;
		this.absent = absent;
	}

	public String getAttend() {
		return attend;
	}

	public void setAttend(String attend) {
		this.attend = attend;
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

	public String getAbsent() {
		return absent;
	}

	public void setAbsent(String absent) {
		this.absent = absent;
	}

	@Override
	public String toString() {
		return "MainParam [attend=" + attend + ", early=" + early + ", sick=" + sick + ", absent=" + absent + "]";
	}
	
		
}
