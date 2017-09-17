package xyz.btpink.www.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import xyz.btpink.www.vo.Demand;
import xyz.btpink.www.vo.Student;
import xyz.btpink.www.vo.Teacher;

/**
 * 게시판 관련 DAO
 */
@Repository
public class TeacherDAO {
	@Autowired
	SqlSession sqlSession;

	public int insert(Teacher teacher) {
		int result = 0;
		TeacherMapper mapper = sqlSession.getMapper(TeacherMapper.class);
		result = mapper.insertTeacher(teacher);
		try {
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public ArrayList<Demand> selectDemand(String id){
	
		TeacherMapper mapper = sqlSession.getMapper(TeacherMapper.class);
		return mapper.selectDemand(id);
	}

}
