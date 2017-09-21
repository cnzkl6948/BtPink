package xyz.btpink.www.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import xyz.btpink.www.vo.Student;
import xyz.btpink.www.vo.Attendence;
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
	
	public int update(String stdno){
		StudentMapper mapper = sqlSession.getMapper(StudentMapper.class);
		int result = mapper.updateStdno(stdno);
		return result;
	}
}
