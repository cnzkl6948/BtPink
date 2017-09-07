package xyz.btpink.www.vo;

public class Parent extends Account{
	private String stdNo;
	
	public Parent(String memNo, String name, String type, String id, String pw, String email, String phone,
			String status) {
		super(memNo, name, type, id, pw, email, phone, status);
	}

	public Parent(String memNo, String name, String type, String id, String pw, String email, String phone,
			String status, String stdNo) {
		super(memNo, name, type, id, pw, email, phone, status);
		this.stdNo = stdNo;
	}

	public String getStdNo() {
		return stdNo;
	}

	public void setStdNo(String stdNo) {
		this.stdNo = stdNo;
	}

	@Override
	public String toString() {
		return "Parent [stdNo=" + stdNo + "]";
	}
	
	

}
