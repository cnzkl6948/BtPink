package xyz.btpink.www.vo;

public class Student {

	private String stdno;
	private String name;
	private int age;
	private int height;
	private String classno;
	private String birth;
	private String adress;
	private String image;
	private String gender;
	private String parentno;
	private int glass;
	
	public Student() {}

	public Student(String stdno, String name, int age, int height, String classno, String birth, String adress,
			String image, String gender, String parentno, int glass) {
		this.stdno = stdno;
		this.name = name;
		this.age = age;
		this.height = height;
		this.classno = classno;
		this.birth = birth;
		this.adress = adress;
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

	public String getadress() {
		return adress;
	}

	public void setadress(String adress) {
		this.adress = adress;
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

	public int getGlass() {
		return glass;
	}

	public void setGlass(int glass) {
		this.glass = glass;
	}

	@Override
	public String toString() {
		return "Student [stdno=" + stdno + ", name=" + name + ", age=" + age + ", height=" + height + ", classno="
				+ classno + ", birth=" + birth + ", adress=" + adress + ", image=" + image + ", gender=" + gender
				+ ", parentno=" + parentno + ", glass=" + glass + "]";
	}
}
