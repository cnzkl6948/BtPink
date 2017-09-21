package xyz.btpink.www.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;

import xyz.btpink.www.vo.Parent;
import xyz.btpink.www.vo.Student;
import xyz.btpink.www.vo.Attendence;
import xyz.btpink.www.vo.Student;
/**
 * 게시판 관련 Mybatis 사용 메서드
 */
public interface StudentMapper {
	public int insertBoard();

	public ArrayList<Student> joinCheck(Student vo);

	public void parentUpdate(Student student);
	
	public int insertStudent(Student student);
	
	public int updateStdno(String personID);
	
	public ArrayList<String> getStdno(String classno);

}
