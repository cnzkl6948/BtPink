package xyz.btpink.www.dao;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import xyz.btpink.www.vo.Parent;
import xyz.btpink.www.vo.Account;
import xyz.btpink.www.vo.Board;
import xyz.btpink.www.vo.Demand;
import xyz.btpink.www.vo.studentInfomation;


/**
 * 게시판 관련 DAO
 */
@Repository
public class ParentDAO {
	@Autowired
	SqlSession sqlSession;

	public int insert(Parent parent) {
		int result = 0;
		System.out.println("parent 0"+parent);
		ParentMapper mapper = sqlSession.getMapper(ParentMapper.class);
		System.out.println("parent 1");
		result = mapper.parentInsert(parent);
		System.out.println("parent 2");
//		result = mapper.accountInsert(parent);			
		System.out.println("parent 3");
		try {
		} catch (Exception e) {
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
	
	
	public Demand getStdInfo(Account account) {
		ParentMapper mapper = sqlSession.getMapper(ParentMapper.class);
		System.out.println(account);
		Demand demandResult = null;
		try {
			demandResult = mapper.getStdInfo(account);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return demandResult;
	}

	public String getClassName(String parentId) {
		ParentMapper mapper = sqlSession.getMapper(ParentMapper.class);
		System.out.println(parentId);
		String className = "";
		try {
			className = mapper.getClassName(parentId);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return className;
	}
	public studentInfomation studentInfomation(Account ac){
		
		ParentMapper mapper = sqlSession.getMapper(ParentMapper.class);
		return mapper.studentInfomation(ac);
	}
	
}
