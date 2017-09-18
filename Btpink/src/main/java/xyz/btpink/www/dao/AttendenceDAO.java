package xyz.btpink.www.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import xyz.btpink.www.vo.Attendence;


/**
 * 게시판 관련 DAO
 */
@Repository
public class AttendenceDAO {
	@Autowired
	SqlSession sqlSession;
	
		
	public ArrayList<Attendence> selectStd(){
		
		AttendenceMapper mapper = sqlSession.getMapper(AttendenceMapper.class);
		ArrayList<Attendence> result = new ArrayList<>();
		result = mapper.selectAtd();
		
		return result;
		
	}
	
	public ArrayList<Attendence> getEmotionList(String stdNo){
		
		AttendenceMapper mapper = sqlSession.getMapper(AttendenceMapper.class);
		ArrayList<Attendence> result = new ArrayList<>();
		result = mapper.getEmotionList(stdNo);
		
		return result;
		
	}
	
	public ArrayList<Attendence> selectToday(String date){
		AttendenceMapper mapper = sqlSession.getMapper(AttendenceMapper.class);
		
		return mapper.selectToday(date); 
	}

}
