package xyz.btpink.www.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;

import xyz.btpink.www.vo.Student;


/**
 * 게시판 관련 Mybatis 사용 메서드
 */
public interface StudentMapper {
	public int insertStudent(Student student);
}
