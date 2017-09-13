package xyz.btpink.www.util;

import java.util.Random;

import xyz.btpink.www.vo.Student;

public class DistributionClass {
	
	
	public void makeStudentInfo(){
		
		Random ran = new Random();
		
		Student student = new Student();
		int gen = ran.nextInt(2);
		if (gen==0) {
			student.setGender("girl");			
		}else{
			student.setGender("boy");
		}
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

	
	
	
	
	
	
}
