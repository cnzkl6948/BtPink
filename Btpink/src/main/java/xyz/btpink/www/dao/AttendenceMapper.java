package xyz.btpink.www.dao;

import java.util.ArrayList;

import xyz.btpink.www.vo.Attendence;

public interface AttendenceMapper {
	public ArrayList<Attendence> selectAtd();

	public ArrayList<Attendence> getEmotionList(String stdno);

	public ArrayList<Attendence> selectToday(String date);
}
