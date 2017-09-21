package xyz.btpink.www.dao;

import java.util.ArrayList;
import java.util.List;

import xyz.btpink.www.vo.Student;
/**
 * 게시판 관련 Mybatis 사용 메서드
 */
public interface StudentMapper {
	public int insertBoard();

	public ArrayList<Student> joinCheck(Student vo);

	public void parentUpdate(Student student);
	
	public int insertStudent(Student student);
	
<<<<<<< HEAD
	public int update(Student stu);
=======
	public int updateStdno(String personID);
	
	public ArrayList<String> getStdno(String classno);
>>>>>>> f10e6eec9c8045a9fe40ef569089758dc8406acf

	public ArrayList<Student> allStuList();
	
	public int changeStuHogam(Student stu);
}
