package xyz.btpink.www.vo;

import java.io.Serializable;
import java.util.List;

public class Student implements Serializable{

	private String stdno;
	private String name;
	private int age;
	private int height;
	private String classno;
	private String birth;
	private String address;
	private String image;
	private String gender;
	private String parentno;
	private String personalid;
	private String hateid;
	private int count;
	private List<Student> stuList;
	
	public Student() {}

	



	
	
	public Student(String stdno, String name, int age, int height, String classno, String birth, String address,
			String image, String gender, String parentno, String personalid, String hateid, int count,
			List<Student> stuList) {
		super();
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
		this.personalid = personalid;
		this.hateid = hateid;
		this.count = count;
		this.stuList = stuList;
	}







	public int getCount() {
		return count;
	}







	public void setCount(int count) {
		this.count = count;
	}







	public List<Student> getStuList() {
		return stuList;
	}



	public void setStuList(List<Student> stuList) {
		this.stuList = stuList;
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



	public String getPersonalid() {
		return personalid;
	}



	public void setPersonalid(String personalid) {
		this.personalid = personalid;
	}



	public String getHateid() {
		return hateid;
	}



	public void setHateid(String hateid) {
		this.hateid = hateid;
	}







	@Override
	public String toString() {
		return "Student [stdno=" + stdno + ", name=" + name + ", age=" + age + ", height=" + height + ", classno="
				+ classno + ", birth=" + birth + ", address=" + address + ", image=" + image + ", gender=" + gender
				+ ", parentno=" + parentno + ", personalid=" + personalid  + ", hateid=" + hateid
				+ ", count=" + count + ", stuList=" + stuList + "]";
	}






}
