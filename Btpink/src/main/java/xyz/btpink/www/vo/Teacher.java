package xyz.btpink.www.vo;

public class Teacher extends Account {
	private String rank;

	public Teacher() {
	}

	public Teacher(String memNo, String name, String type, String id, String pw, String email, String phone,
			String status) {
		super(memNo, name, type, id, pw, email, phone, status);
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString() + "Teacher [rank=" + rank + "]";
	}
}
