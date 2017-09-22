package xyz.btpink.www.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import xyz.btpink.www.vo.Student;


/**
 * 게시판 관련 DAO
 */
@Repository
public class StudentDAO {
	@Autowired
	SqlSession sqlSession;
	
	public int insert(Student student) {
		System.out.println("다오 진입");
		StudentMapper mapper = sqlSession.getMapper(StudentMapper.class);
		
		int result = 0;
		try {
			result = mapper.insertStudent(student);
		}
		catch (Exception e) {
			e.printStackTrace();
			System.out.println("왜 에러일까");
		}
		return result;
	}
	
	public ArrayList<String> getStdno(String classno){
		StudentMapper mapper = sqlSession.getMapper(StudentMapper.class);
		ArrayList<String> result = mapper.getStdno(classno);
		return result;
	}

	public ArrayList<Student> joinCheck(Student student) {
		StudentMapper mapper = sqlSession.getMapper(StudentMapper.class);
		System.out.println(student);
		ArrayList<Student> ckList = mapper.joinCheck(student);
		int result = 0;
		try {
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ckList;
	}

	public int parentUpdate(Student student) {
		
		StudentMapper mapper = sqlSession.getMapper(StudentMapper.class);
		mapper.parentUpdate(student);
		return 0;
		// TODO Auto-generated method stub
	}
	
	public int update(Student stu){
		StudentMapper mapper = sqlSession.getMapper(StudentMapper.class);
		int result = mapper.update(stu);
		return result;
	}
	
	public ArrayList<Student> allStuList(){
		StudentMapper mapper = sqlSession.getMapper(StudentMapper.class);
		ArrayList<Student> result = mapper.allStuList();
		return result;
	}
	
	public int changeStuHogam(Student stu){
		StudentMapper mapper = sqlSession.getMapper(StudentMapper.class);
		int result = mapper.changeStuHogam(stu);
		return result;
	}
	public void allClassnoNull(){
		StudentMapper mapper = sqlSession.getMapper(StudentMapper.class);
		mapper.allClassnoNull();
	}
	public void allHateNull(){
		StudentMapper mapper = sqlSession.getMapper(StudentMapper.class);
		mapper.allHateNull();
	}
}
