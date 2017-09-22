package xyz.btpink.www.vo;

public class ClassVO {

	private String classNo;
	private String className;
	private int capa;
	private String memNo;
	private int age;
	private int boyCapa;
	private int girlCapa;
	private int boy;
	private int girl;
	
	
	public ClassVO(){}
	

	public ClassVO(String classNo, String className, int capa, String memNo, int age) {
		super();
		this.classNo = classNo;
		this.className = className;
		this.capa = capa;
		this.memNo = memNo;
		this.age = age;
	}

	
	




	public int getBoyCapa() {
		return boyCapa;
	}


	public void setBoyCapa(int boyCapa) {
		this.boyCapa = boyCapa;
	}


	public int getGirlCapa() {
		return girlCapa;
	}


	public void setGirlCapa(int girlCapa) {
		this.girlCapa = girlCapa;
	}


	public int getBoy() {
		return boy;
	}


	public void setBoy(int boy) {
		this.boy = boy;
	}


	public int getGirl() {
		return girl;
	}


	public void setGirl(int girl) {
		this.girl = girl;
	}


	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}


	public String getClassName() {
		return className;
	}


	public void setClassName(String className) {
		this.className = className;
	}


	public int getCapa() {
		return capa;
	}


	public void setCapa(int capa) {
		this.capa = capa;
	}


	public String getMemNo() {
		return memNo;
	}


	public void setMemNo(String memNo) {
		this.memNo = memNo;
	}


	public String getClassNo() {
		return classNo;
	}

	public void setClassNo(String classNo) {
		this.classNo = classNo;
	}


	@Override
	public String toString() {
		return "Class [classNo=" + classNo + ", className=" + className + ", capa=" + capa + ", memNo=" + memNo + "]";
	}

	
}
