package xyz.btpink.www.vo;

public class Account {
	private String memNo;	//멤버 고유 번호
	private String name;	//이름
	private String type;	//학부모 p, 선생님 t 
	private String id;		
	private String pw;		
	private String email;	
	private String phone;
	private String status;	//비승인 0, 승인 1, 탈퇴 2
	
	
	public Account() {}

	public Account(String memNo, String name, String type, String id, String pw, String email, String phone,
			String status) {
		this.memNo = memNo;
		this.name = name;
		this.type = type;
		this.id = id;
		this.pw = pw;
		this.email = email;
		this.phone = phone;
		this.status = status;
	}
	
	
	
	public String getMemNo() {
		return memNo;
	}

	public void setMemNo(String memNo) {
		this.memNo = memNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Account [memNo=" + memNo + ", name=" + name + ", type=" + type + ", id=" + id + ", pw=" + pw
				+ ", email=" + email + ", phone=" + phone + ", status=" + status + "]";
	}
}
