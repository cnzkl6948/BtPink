package xyz.btpink.www.vo;

public class ClassVO {

	String classNo;
	String className;
	String memNo;
	String age;
	String teacherName;
	
	public ClassVO(){}
	
	public ClassVO(String className){	
		
		this.className = className;
		}
	
	
	public ClassVO(String classNo, String className, String memNo, String age) {
		super();
		this.classNo = classNo;
		this.className = className;
		this.memNo = memNo;
		this.age = age;
	}
	
	
	public ClassVO(String classNo, String className, String memNo, String age, String teacherName) {
		super();
		this.classNo = classNo;
		this.className = className;
		this.memNo = memNo;
		this.age = age;
		this.teacherName = teacherName;
	}

	public String getAge() {
		return age;
	}


	public void setAge(String age) {
		this.age = age;
	}


	public String getClassName() {
		return className;
	}


	public void setClassName(String className) {
		this.className = className;
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

	
	public String getTeacherName() {
		return teacherName;
	}

	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}

	@Override
	public String toString() {
		return "ClassVO [classNo=" + classNo + ", className=" + className + ", memNo=" + memNo
				+ ", age=" + age + "]";
	}


}
