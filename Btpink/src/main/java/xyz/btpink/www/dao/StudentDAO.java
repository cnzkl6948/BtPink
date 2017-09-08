package xyz.btpink.www.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
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
		}
		return result;
	}
	

}
