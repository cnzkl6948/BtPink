package xyz.btpink.www.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import xyz.btpink.www.vo.Attendence;
import xyz.btpink.www.vo.Student;


/**
 * 게시판 관련 DAO
 */
@Repository
public class AttendenceDAO {
	@Autowired
	SqlSession sqlSession;
	
	@Autowired
	StudentDAO sdao;
	
		
public ArrayList<Attendence> selectAtd(String classno){
		
		AttendenceMapper mapper = sqlSession.getMapper(AttendenceMapper.class);
		ArrayList<Attendence> result = new ArrayList<>();
		result = mapper.selectAtd(classno);
		
		return result;
		
	}

	public int initAtd(String classno){
		AttendenceMapper mapper =sqlSession.getMapper(AttendenceMapper.class);
		ArrayList<Attendence> result = new ArrayList<>();
		result = mapper.checkAtd(classno); // 오늘 생성된 해당 반의 출석부 목록이 있는지 확인
		System.out.println("출석부 목록 체크 결과 : "+result);
		
		int iresult = 0;
		
		if(result.size() == 0){
			System.out.println("if문 진입");
			ArrayList<String> sresult = sdao.getStdno(classno);
				System.out.println("학생번호 리스트 출력 : "+sresult);
			
			for (int i = 0; i < sresult.size(); i++) {
				String stdno = sresult.get(i);
				System.out.println(stdno);
				Attendence atd = new Attendence(stdno, "", classno, "", "", "", "", "", "");
				System.out.println("atd 객체 확인 : "+atd);
			iresult = mapper.insertInitAtd(atd); // 입력 작업
			}
		}
		
		return iresult;
		
	}
	
	public ArrayList<Attendence> getEmotionList(String stdno){
		
		AttendenceMapper mapper = sqlSession.getMapper(AttendenceMapper.class);
		ArrayList<Attendence> result = new ArrayList<>();
		result = mapper.getEmotionList(stdno);
		
		return result;
		
	}
	
	public ArrayList<Attendence> selectToday(String date){
		AttendenceMapper mapper = sqlSession.getMapper(AttendenceMapper.class);
		
		return mapper.selectToday(date); 
	}

	public int updateCul(Attendence attendence){
		AttendenceMapper mapper = sqlSession.getMapper(AttendenceMapper.class);
		int result = mapper.updateCul(attendence);
		return result;
	}
}
