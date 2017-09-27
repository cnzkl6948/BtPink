package xyz.btpink.www.vo;

public class studentInfomation {
	private String studentName;
	private String height;
	private String className;
	private String teacherName;

	public studentInfomation(){}
	
	public studentInfomation(String studentName, String height, String className, String teacherName) {
		super();
		this.studentName = studentName;
		this.height = height;
		this.className = className;
		this.teacherName = teacherName;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getTeacherName() {
		return teacherName;
	}

	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}

	@Override
	public String toString() {
		return "studentInfomation [studentName=" + studentName + ", height=" + height + ", className=" + className
				+ ", teacherName=" + teacherName + "]";
	}
}
