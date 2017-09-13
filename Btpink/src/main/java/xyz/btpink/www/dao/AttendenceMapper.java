package xyz.btpink.www.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;

import xyz.btpink.www.vo.Attendence;
import xyz.btpink.www.vo.Student;

public interface AttendenceMapper {
	public ArrayList<Attendence> selectAtd();
	public ArrayList<Attendence> getEmotionList(String stdNo);
}
