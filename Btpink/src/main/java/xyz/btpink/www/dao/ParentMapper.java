package xyz.btpink.www.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;

import xyz.btpink.www.vo.Demand;


/**
 * 게시판 관련 Mybatis 사용 메서드
 */
public interface ParentMapper {
	public int insertBoard( );
	public int insertDemand(Demand demand);
	public Demand getStdInfo(String parentId);
}
