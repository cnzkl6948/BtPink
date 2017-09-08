package xyz.btpink.www.vo;

public class Student {
	
	String stdno;
	String name;
	int age;
	int height;
	String sclass;
	String birth;
	String address;
	String image;
	String gender;
	String parentno;
	
	public Student(){
		
	}
		
	public Student(String stdno, String name, int age, int height, String sclass, String birth, String address,
			String image, String gender, String parentno) {
		this.stdno = stdno;
		this.name = name;
		this.age = age;
		this.height = height;
		this.sclass = sclass;
		this.birth = birth;
		this.address = address;
		this.image = image;
		this.gender = gender;
		this.parentno = parentno;
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

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public String getSclass() {
		return sclass;
	}

	public void setSclass(String sclass) {
		this.sclass = sclass;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getaddress() {
		return address;
	}

	public void setaddress(String address) {
		this.address = address;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getParentno() {
		return parentno;
	}

	public void setParentno(String parentno) {
		this.parentno = parentno;
	}

	@Override
	public String toString() {
		return "Student [stdno=" + stdno + ", name=" + name + ", age=" + age + ", height=" + height + ", sclass="
				+ sclass + ", birth=" + birth + ", address=" + address + ", image=" + image + ", gender=" + gender
				+ ", parentno=" + parentno + "]";
	}
	
	
	
	
	
	

}
