package xyz.btpink.www.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import xyz.btpink.www.vo.Board;
import xyz.btpink.www.vo.Demand;


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
	
	public int insertDemand(Demand demand) {
		ParentMapper mapper = sqlSession.getMapper(ParentMapper.class);
		
		int result = 0;
		try {
			result = mapper.insertDemand(demand);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	public Demand getStdInfo(String parentId) {
		ParentMapper mapper = sqlSession.getMapper(ParentMapper.class);
		
		Demand demandResult = new Demand();
		try {
			demandResult = mapper.getStdInfo(parentId);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return demandResult;
	}

}
