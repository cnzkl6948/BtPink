package xyz.btpink.www.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;

import xyz.btpink.www.vo.Demand;
import xyz.btpink.www.vo.Teacher;

public interface TeacherMapper {
	public int insertBoard();

	public int insertTeacher(Teacher teacher);

	public ArrayList<Demand> selectDemand(String id);
}
