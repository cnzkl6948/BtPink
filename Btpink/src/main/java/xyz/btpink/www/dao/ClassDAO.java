package xyz.btpink.www.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import xyz.btpink.www.vo.ClassVO;
@Repository
public class ClassDAO implements ClassMapper {
	@Autowired
	SqlSession sqlSession;
	
	public ClassVO selectClass(String memNo) {
		// TODO Auto-generated method stub
		ClassMapper mapper = sqlSession.getMapper(ClassMapper.class);
		ClassVO selClass = mapper.selectClass(memNo);
		return selClass;
	}

	public ArrayList<ClassVO> allClass() {
		// TODO Auto-generated method stub
		ClassMapper mapper = sqlSession.getMapper(ClassMapper.class);
		ArrayList<ClassVO> allClass = mapper.allClass();
		return allClass;
	}

}
