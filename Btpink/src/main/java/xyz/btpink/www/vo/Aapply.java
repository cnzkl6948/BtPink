package xyz.btpink.www.vo;

public class Aapply {
	private String memNo;
	private String id;
	private String parentName;
	private String studentName;
	private String tell;
	private String status;

	public Aapply() {
	}
	
	

	public Aapply(String memNo, String id, String parentName, String studentName, String tell, String status) {
		super();
		this.memNo = memNo;
		this.id = id;
		this.parentName = parentName;
		this.studentName = studentName;
		this.tell = tell;
		this.status = status;
	}



	public String getMemNo() {
		return memNo;
	}

	public void setMemNo(String memNo) {
		this.memNo = memNo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getParentName() {
		return parentName;
	}

	public void setParentName(String parentName) {
		this.parentName = parentName;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getTell() {
		return tell;
	}

	public void setTell(String tell) {
		this.tell = tell;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Aapply [memNo=" + memNo + ", id=" + id + ", parentName=" + parentName + ", studentName=" + studentName
				+ ", tell=" + tell + ", status=" + status + "]";
	}
	
}
