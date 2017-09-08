package xyz.btpink.www.vo;

public class Student {

	private String stdno;
	private String name;
	private String age;
	private String height;
	private String classno;
	private String birth;
	private String address;
	private String image;
	private String gender;
	private String parentno;
	private String glass;
	
	public Student() {}

	public Student(String stdno, String name, String age, String height, String classno, String birth, String address,
			String image, String gender, String parentno, String glass) {
		this.stdno = stdno;
		this.name = name;
		this.age = age;
		this.height = height;
		this.classno = classno;
		this.birth = birth;
		this.address = address;
		this.image = image;
		this.gender = gender;
		this.parentno = parentno;
		this.glass = glass;
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

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public String getClassno() {
		return classno;
	}

	public void setClassno(String classno) {
		this.classno = classno;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
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

	public String getGlass() {
		return glass;
	}

	public void setGlass(String glass) {
		this.glass = glass;
	}

	@Override
	public String toString() {
		return "Student [stdno=" + stdno + ", name=" + name + ", age=" + age + ", height=" + height + ", classno="
				+ classno + ", birth=" + birth + ", address=" + address + ", image=" + image + ", gender=" + gender
				+ ", parentno=" + parentno + ", glass=" + glass + "]";
	}
}
