package xyz.btpink.www.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


/**
 * 게시판 관련 DAO
 */
@Repository
public class ParentDAO {
	@Autowired
	SqlSession sqlSession;
	
	public int insert( ) {
		StudentMapper mapper = sqlSession.getMapper(StudentMapper.class);
		
		int result = 0;
		try {
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	

}
