package xyz.btpink.www.vo;

public class ClassVO {

	String classNo;
	String className;
	String capa;
	String memNo;
	
	
	public ClassVO(){}
	

	public String getClassName() {
		return className;
	}


	public void setClassName(String className) {
		this.className = className;
	}


	public String getCapa() {
		return capa;
	}


	public void setCapa(String capa) {
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
