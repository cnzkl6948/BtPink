package xyz.btpink.www.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;

import xyz.btpink.www.vo.Parent;
import xyz.btpink.www.vo.Account;
import xyz.btpink.www.vo.Demand;
import xyz.btpink.www.vo.studentInfomation;

/**
 * 게시판 관련 Mybatis 사용 메서드
 */
public interface ParentMapper {
	public int parentInsert(Parent parent);

	public int insertBoard();

	public int insertDemand(Demand demand);

	public Demand getStdInfo(Account account);

	public String getClassName(String parentId);

	public studentInfomation studentInfomation(Account ac);

	public String myStdno(String memno);

}
