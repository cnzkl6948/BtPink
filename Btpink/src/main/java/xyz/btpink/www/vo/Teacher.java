package xyz.btpink.www.vo;

public class Teacher extends Account{
	private String rank;
	
	public Teacher(){}
	public Teacher(String memNo, String name, String type, String id, String pw, String email, String phone,
			String status) {
		super(memNo, name, type, id, pw, email, phone, status);
	}

	public Teacher(String memNo, String name, String type, String id, String pw, String email, String phone,
			String status, String rank) {
		super(memNo, name, type, id, pw, email, phone, status);
		this.rank = rank;
	}

	public String getRank() {
		return rank;
	}

	public void setRank(String rank) {
		this.rank = rank;
	}

	@Override
	public String toString() {
		return "Teacher [rank=" + rank + "]";
	}

	
	
	

}
