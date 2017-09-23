package xyz.btpink.www.dao;

import java.util.ArrayList;

import xyz.btpink.www.vo.Account;
import xyz.btpink.www.vo.Attendence;
import xyz.btpink.www.vo.IdentfyVO;

public interface AttendenceMapper {
	public Attendence getMainParam(String classno);
	
	public ArrayList<Attendence> selectAtd(String classno);
	
	public ArrayList<Attendence> selectAtdt(Attendence atd);

	public ArrayList<Attendence> checkAtd(String classno);

	public int insertInitAtd(Attendence atd);

	public ArrayList<Attendence> getEmotionList(String stdno);

	public ArrayList<Attendence> selectToday(String date);

	public ArrayList<Attendence> selectStudent(Account account);

	public int identfy(IdentfyVO identfy);

//	public int updateCul(Attendence attendence);
	
	public int updateCult(Attendence attendence);

}
