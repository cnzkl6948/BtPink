package xyz.btpink.www.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;

import xyz.btpink.www.vo.Parent;

/**
 * 게시판 관련 Mybatis 사용 메서드
 */
public interface ParentMapper {
	public int insertBoard();

	public int parentInsert(Parent parent);

}
